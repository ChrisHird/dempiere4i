﻿-- Function: linenetamtrealinvoiceline(DECFLOAT(34))

-- DROP FUNCTION linenetamtrealinvoiceline(DECFLOAT(34));

CREATE OR REPLACE FUNCTION linenetamtrealinvoiceline(p_c_invoiceline_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
DECLARE
          v_amt DECFLOAT(34);  
BEGIN
	select case when pl.istaxincluded = 'Y' AND t.rate <> 0 
	then round(ivl.linenetamt/(1+(t.rate/100)),cur.stdprecision) else linenetamt end  into v_amt
	from c_Invoiceline ivl
	inner join c_invoice i on ivl.c_invoice_ID = i.c_invoice_ID
	inner join m_pricelist pl on i.m_pricelist_ID = pl.m_pricelist_ID
	inner join c_Tax t on ivl.c_tax_ID = t.c_tax_ID
	inner join c_currency cur on i.c_currency_ID = cur.c_Currency_ID
	where ivl.c_invoiceline_ID=p_c_invoiceLine_ID;

    RETURN coalesce(v_amt,0);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION linenetamtrealinvoiceline(DECFLOAT(34))
  OWNER TO adempiere;
