-- View: rv_commissionrundetail

-- DROP VIEW rv_commissionrundetail;

 SELECT cr.ad_client_id,
    cr.ad_org_id,
    cr.isactive,
    cr.created,
    cr.createdby,
    cr.updated,
    cr.updatedby,
    cr.c_commissionrun_id,
    cr.documentno,
    cr.description,
    cr.startdate,
    cr.grandtotal,
    cr.processed,
    c.c_commission_id,
    ca.c_bpartner_id AS commission_bpartner_id,
    ca.c_commissionamt_id,
    cd.convertedamt AS commissionconvertedamt,
    cd.actualqty AS commissionqty,
    cd.commissionamt,
    cd.c_commissiondetail_id,
    cd.reference,
    cd.c_orderline_id,
    cd.c_invoiceline_id,
    cd.info,
    cd.c_currency_id,
    cd.actualamt,
    cd.convertedamt,
    cd.actualqty,
    i.documentno AS invoicedocumentno,
    COALESCE(i.dateinvoiced, o.dateordered) AS datedoc,
    COALESCE(il.m_product_id, ol.m_product_id) AS m_product_id,
    COALESCE(i.c_bpartner_id, o.c_bpartner_id) AS c_bpartner_id,
    COALESCE(i.c_bpartner_location_id, o.c_bpartner_location_id) AS c_bpartner_location_id,
    COALESCE(i.ad_user_id, o.ad_user_id) AS ad_user_id,
    COALESCE(i.c_doctype_id, o.c_doctype_id) AS c_doctype_id
FROM ccomr cr
JOIN ccom c ON cr.c_commission_id = c.c_commission_id
JOIN ccomamt c ON cr.c_commission_id = c.c_commission_id
JOIN ccomdet c ON cr.c_commission_id = c.c_commission_id
JOIN ccomgrp c ON cr.c_commission_id = c.c_commission_id
JOIN ccomln c ON cr.c_commission_id = c.c_commission_id
JOIN ccomr c ON cr.c_commission_id = c.c_commission_id
JOIN ccomslsr c ON cr.c_commission_id = c.c_commission_id
JOIN ccomamt ca ON cr.c_commissionrun_id = ca.c_commissionrun_id
JOIN ccomdet cd ON ca.c_commissionamt_id = cd.c_commissionamt_id
JOIN cordln ol ON cd.c_orderline_id = ol.c_orderline_id
JOIN cinvln il ON cd.c_invoiceline_id = il.c_invoiceline_id
     LEFT JOIN c_order o ON ol.c_order_id = o.c_order_id
     LEFT JOIN c_invoice i ON il.c_invoice_id = i.c_invoice_id;

