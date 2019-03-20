-- Function: nextidbyyear(DECFLOAT(34), DECFLOAT(34), character varying)

-- DROP FUNCTION nextidbyyear(DECFLOAT(34), DECFLOAT(34), character varying);

CREATE OR REPLACE FUNCTION nextidbyyear(
    p_ad_sequence_id DECFLOAT(34),
    p_incrementno DECFLOAT(34),
    p_calendaryear character varying)
  RETURNS DECFLOAT(34)
$BODY$
DECLARE
    o_NextID DECFLOAT(34);
BEGIN
   SELECT CurrentNext
		INTO o_NextID
	FROM ad_sequence_no
	WHERE AD_Sequence_ID=p_AD_Sequence_ID 
	AND CalendarYear = p_CalendarYear 
	FOR UPDATE OF ad_sequence_no;
	--
	UPDATE ad_sequence_no
	  SET CurrentNext = CurrentNext + p_IncrementNo
	WHERE AD_Sequence_ID=p_AD_Sequence_ID
	AND CalendarYear = p_CalendarYear;
	RETURN o_NextID;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION nextidbyyear(DECFLOAT(34), DECFLOAT(34), character varying)
  OWNER TO adempiere;
