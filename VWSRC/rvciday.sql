-- View: rv_c_invoice_day

-- DROP VIEW rv_c_invoice_day;

 SELECT rv_c_invoiceline.ad_client_id,
    rv_c_invoiceline.ad_org_id,
    rv_c_invoiceline.salesrep_id,
    firstof(rv_c_invoiceline.dateinvoiced, 'DD') AS dateinvoiced,
    sum(rv_c_invoiceline.linenetamt) AS linenetamt,
    sum(rv_c_invoiceline.linelistamt) AS linelistamt,
    sum(rv_c_invoiceline.linelimitamt) AS linelimitamt,
    sum(rv_c_invoiceline.linediscountamt) AS linediscountamt,
        CASE
            WHEN sum(rv_c_invoiceline.linelistamt) = 0 THEN 0
            ELSE round((sum(rv_c_invoiceline.linelistamt) - sum(rv_c_invoiceline.linenetamt)) / 
			sum(rv_c_invoiceline.linelistamt) * 100, 2)
        END AS linediscount,
    sum(rv_c_invoiceline.lineoverlimitamt) AS lineoverlimitamt,
        CASE
            WHEN sum(rv_c_invoiceline.linenetamt) = 0 THEN 0
            ELSE 100 - round((sum(rv_c_invoiceline.linenetamt) - sum(rv_c_invoiceline.lineoverlimitamt)) 
			/ sum(rv_c_invoiceline.linenetamt) * 100, 2)
        END AS lineoverlimit,
    rv_c_invoiceline.issotrx,
    rv_c_invoiceline.c_bpartner_id,
    rv_c_invoiceline.c_bp_group_id,
    rv_c_invoiceline.c_doctypetarget_id,
    rv_c_invoiceline.docstatus
  GROUP BY rv_c_invoiceline.ad_client_id, rv_c_invoiceline.ad_org_id, rv_c_invoiceline.salesrep_id,
  (firstof(rv_c_invoiceline.dateinvoiced, 'DD')), rv_c_invoiceline.issotrx, rv_c_invoiceline.c_bpartner_id,
  rv_c_invoiceline.c_bp_group_id, rv_c_invoiceline.c_doctypetarget_id, rv_c_invoiceline.docstatus;

