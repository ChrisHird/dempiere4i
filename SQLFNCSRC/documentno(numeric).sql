-- Function: documentno(DECFLOAT(34))

-- DROP FUNCTION documentno(DECFLOAT(34));

CREATE OR REPLACE FUNCTION documentno(p_pp_mrp_id DECFLOAT(34))
  RETURNS character varying AS
$BODY$
DECLARE
	v_DocumentNo  ANCHOR DATA TYPE TO PP_MRP.Value = '';
BEGIN
	-- If NO id return empty string
	IF p_PP_MRP_ID <= 0 THEN
		RETURN '';
	END IF;
	SELECT --ordertype, m_forecast_id, c_order_id, dd_order_id, pp_order_id, m_requisition_id,
	CASE
			WHEN trim(mrp.ordertype) = 'FTC' THEN (SELECT f.Name FROM M_Forecast f 
			WHERE f.M_Forecast_ID=mrp.M_Forecast_ID)
			WHEN trim(mrp.ordertype) = 'POO' THEN (SELECT co.DocumentNo  FROM C_Order co 
			WHERE co.C_Order_ID=mrp.C_Order_ID)
			WHEN trim(mrp.ordertype) = 'DOO' THEN (SELECT dd.DocumentNo  FROM DD_Order dd 
			WHERE dd.DD_Order_ID=mrp.DD_Order_ID)
			WHEN trim(mrp.ordertype) = 'SOO' THEN (SELECT co.DocumentNo  FROM C_Order co 
			WHERE co.C_Order_ID=mrp.C_Order_ID)
			WHEN trim(mrp.ordertype) = 'MOP' THEN (SELECT po.DocumentNo FROM PP_Order po 
			WHERE po.PP_Order_ID=mrp.PP_Order_ID)
			WHEN trim(mrp.ordertype) = 'POR' THEN (SELECT r.DocumentNo  FROM M_Requisition r 
			WHERE r.M_Requisition_ID=mrp.M_Requisition_ID)
			
	END INTO v_DocumentNo
	FROM pp_mrp mrp
	WHERE mrp.pp_mrp_id = p_PP_MRP_ID;
	RETURN v_DocumentNo;
END;	
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION documentno(DECFLOAT(34))
  OWNER TO adempiere;
