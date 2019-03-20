-- Function: processreportsource(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- TIMESTAMP, TIMESTAMP)

-- DROP FUNCTION processreportsource(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- TIMESTAMP, TIMESTAMP);

CREATE OR REPLACE FUNCTION processreportsource(
    hr_process_id DECFLOAT(34),
    c_bpartner_id DECFLOAT(34),
    hr_processreportline_id DECFLOAT(34),
    _from TIMESTAMP,
    _to TIMESTAMP)
  RETURNS text AS
$BODY$

DECLARE
	p_HR_Process_ID		DECFLOAT(34) = $1;
	p_C_BPartner_ID		DECFLOAT(34) = $2;
	p_HR_ProcessReportLine_ID		DECFLOAT(34) = $3;
	p_ValidFrom		TIMESTAMP	= $4;
	p_ValidTo		TIMESTAMP	= $5;
	v_Description		CLOB;
	ds			RECORD;
BEGIN
	FOR ds IN
		SELECT rs.Prefix, 
			CASE 
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'Q' THEN 
				CAST(ROUND(m.Qty, 2) AS TEXT) 
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'A' THEN 
                    REPLACE(TO_CHAR(ROUND(m.Amount, 2), 
					COALESCE(rs.FormatPattern, '99G999G999G999D99')),' ','') 
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'D' THEN 
				TO_CHAR(COALESCE(m.ServiceDate, m.ValidFrom), 
				COALESCE(rs.FormatPattern, 'DD/MM/YYYY'))
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'T' THEN 
				COALESCE(m.Description, m.TextMsg, '')
			END MovementValue,
			rs.Suffix,rs.FormatPattern
		FROM HR_ProcessReportSource rs 
        INNER JOIN HR_Concept c ON(c.HR_Concept_ID = rs.HR_Concept_ID)
		INNER JOIN HR_Movement m ON(m.HR_Concept_ID = c.HR_Concept_ID)
		WHERE rs.HR_ProcessReportLine_ID = p_HR_ProcessReportLine_ID
		AND rs.IsActive = 'Y'
        AND m.HR_Process_ID = p_HR_Process_ID
		AND (m.C_BPartner_ID = p_C_BPartner_ID OR p_C_BPartner_ID = 0)
		AND m.ValidFrom BETWEEN p_ValidFrom AND p_ValidTo
		ORDER BY rs.SeqNo, m.ValidFrom
	LOOP
        RAISE NOTICE 'Format %',ds.FormatPattern;
		v_Description = COALESCE(v_Description, '') 
					|| COALESCE(ds.Prefix, '') 
					|| COALESCE(ds.MovementValue, '')
					|| COALESCE(ds.Suffix, '');
	END LOOP;
	RETURN v_Description;
END;

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION processreportsource(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
TIMESTAMP, TIMESTAMP)
  OWNER TO adempiere;
