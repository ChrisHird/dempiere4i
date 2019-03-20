-- Function: invoiceopentodate(DECFLOAT(34), DECFLOAT(34), date)

-- DROP FUNCTION invoiceopentodate(DECFLOAT(34), DECFLOAT(34), date);

CREATE OR REPLACE FUNCTION invoiceopentodate(
    p_c_invoice_id DECFLOAT(34),
    p_c_invoicepayschedule_id DECFLOAT(34),
    p_dateacct date)
  RETURNS DECFLOAT(34)
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
BEGIN
	RETURN InvoiceopenToDate(p_c_invoice_id, p_c_invoicepayschedule_id, 
	p_dateacct::TIMESTAMP);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION invoiceopentodate(DECFLOAT(34), DECFLOAT(34), date)
  OWNER TO adempiere;
