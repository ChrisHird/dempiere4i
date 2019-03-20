-- View: rv_cash_detail

-- DROP VIEW rv_cash_detail;

 SELECT cl.c_cash_id,
    cl.c_cashline_id,
    c.ad_client_id,
    c.ad_org_id,
    cl.isactive,
    cl.created,
    cl.createdby,
    cl.updated,
    cl.updatedby,
    c.c_cashbook_id,
    c.name,
    c.statementdate,
    c.dateacct,
    c.processed,
    c.posted,
    cl.line,
    cl.description,
    cl.cashtype,
    cl.c_currency_id,
    cl.amount,
    currencyconvert(cl.amount, cl.c_currency_id, cb.c_currency_id, c.statementdate, 0, 
	c.ad_client_id, c.ad_org_id) AS convertedamt,
    cl.c_bankaccount_id,
    cl.c_invoice_id,
    cl.c_charge_id
   FROM c_cash c
     JOIN c_cashline cl ON c.c_cash_id = cl.c_cash_id
     JOIN c_cashbook cb ON c.c_cashbook_id = cb.c_cashbook_id;

