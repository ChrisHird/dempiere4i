-- View: c_invoiceline_v

-- DROP VIEW c_invoiceline_v;

 SELECT il.ad_client_id,
    il.ad_org_id,
    il.c_invoiceline_id,
    i.c_invoice_id,
    i.salesrep_id,
    i.c_bpartner_id,
    il.m_product_id,
    i.documentno,
    i.dateinvoiced,
    i.dateacct,
    i.issotrx,
    i.docstatus,
    round(i.multiplier * il.linenetamt, 2) AS linenetamt,
    round(i.multiplier * il.pricelist * il.qtyinvoiced, 2) AS linelistamt,
        CASE
            WHEN COALESCE(il.pricelimit, 0) = 0 THEN round(i.multiplier * il.linenetamt, 2)
            ELSE round(i.multiplier * il.pricelimit * il.qtyinvoiced, 2)
        END AS linelimitamt,
    round(i.multiplier * il.pricelist * il.qtyinvoiced - il.linenetamt, 2) AS linediscountamt,
        CASE
            WHEN COALESCE(il.pricelimit, 0) = 0 THEN 0
            ELSE round(i.multiplier * il.linenetamt - il.pricelimit * il.qtyinvoiced, 2)
        END AS lineoverlimitamt,
    il.qtyinvoiced,
    il.qtyentered,
    il.line,
    il.c_orderline_id,
    il.c_uom_id,
    il.c_campaign_id,
    il.c_project_id,
    il.c_activity_id,
    il.c_projectphase_id,
    il.c_projecttask_id
    c_invoiceline il
  WHERE i.c_invoice_id = il.c_invoice_id;

