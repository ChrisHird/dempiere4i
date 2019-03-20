-- Function: paymenttermduedate(DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION paymenttermduedate(DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION paymenttermduedate(
    paymentterm_id DECFLOAT(34),
    docdate TIMESTAMP)
  RETURNS TIMESTAMP AS
$BODY$
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *
 * converted to postgreSQL by Karsten Thiemann (Schaeffer AG), 
 * kthiemann@org
 *************************************************************************
 * Title:	Get Due TIMESTAMP
 * Description:
 *	Returns the due TIMESTAMP
 * Test:
 *	select paymenttermDueDate(106, now()) from Test; => now()+30 days
 ************************************************************************/
DECLARE
 	Days				DECFLOAT(34) =  0;
	DueDate				TIMESTAMP = TRUNC(DocDate);
	--
	FirstDay			TIMESTAMP;
	NoDays				DECFLOAT(34);
	p   			RECORD;
BEGIN
	FOR p IN 
		SELECT	*
		FROM	C_PaymentTerm
		WHERE	C_PaymentTerm_ID = PaymentTerm_ID
	LOOP	--	for convineance only
		--	Due 15th of following month
		IF (p.IsDueFixed = 'Y') THEN		
			FirstDay = TRUNC(DocDate, 'MM');
			NoDays = EXTRACT(day FROM TRUNC(DocDate) - FirstDay);
			DueDate = FirstDay + (p.FixMonthDay-1);	--	starting on 1st
			DueDate = ADD_MONTHS(DueDate, p.FixMonthOffset);
			IF (NoDays > p.FixMonthCutoff) THEN
				DueDate = ADD_MONTHS(DueDate, 1);
			END IF;
		ELSE
			DueDate = TRUNC(DocDate) + p.NetDays;
		END IF;
	END LOOP;
	RETURN DueDate;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION paymenttermduedate(DECFLOAT(34), TIMESTAMP)
  OWNER TO adempiere;
