﻿-- View: rv_orderdetail

-- DROP VIEW rv_orderdetail;

 SELECT l.ad_client_id,
    l.ad_org_id,
    l.isactive,
    l.created,
    l.createdby,
    l.updated,
    l.updatedby,
    o.c_order_id,
    o.docstatus,
    o.docaction,
    o.c_doctype_id,
    o.isapproved,
    o.iscreditapproved,
    o.salesrep_id,
    o.bill_bpartner_id,
    o.bill_location_id,
    o.bill_user_id,
    o.isdropship,
    l.c_bpartner_id,
    l.c_bpartner_location_id,
    o.ad_user_id,
    o.poreference,
    o.c_currency_id,
    o.issotrx,
    l.c_campaign_id,
    l.c_project_id,
    l.c_activity_id,
    l.c_projectphase_id,
    l.c_projecttask_id,
    l.c_orderline_id,
    l.dateordered,
    l.datepromised,
    l.m_product_id,
    l.m_warehouse_id,
    l.m_attributesetinstance_id,
    productattribute(l.m_attributesetinstance_id) AS productattribute,
    pasi.m_attributeset_id,
    pasi.m_lot_id,
    pasi.guaranteedate,
    pasi.lot,
    pasi.serno,
    l.c_uom_id,
    l.qtyentered,
    l.qtyordered,
    l.qtyreserved,
    l.qtydelivered,
    l.qtyinvoiced,
    l.priceactual,
    l.priceentered,
    l.qtyordered - l.qtydelivered AS qtytodeliver,
    l.qtyordered - l.qtyinvoiced AS qtytoinvoice,
    (l.qtyordered - l.qtyinvoiced) * l.priceactual AS netamttoinvoice,
    l.qtylostsales,
    l.qtylostsales * l.priceactual AS amtlostsales,
        CASE
            WHEN l.pricelist = 0 THEN 0
            ELSE round((l.pricelist - l.priceactual) / l.pricelist * 100, 2)
        END AS discount,
        CASE
            WHEN l.pricelimit = 0 THEN 0
            ELSE round((l.priceactual - l.pricelimit) / l.pricelimit * 100, 2)
        END AS margin,
        CASE
            WHEN l.pricelimit = 0 THEN 0
            ELSE (l.priceactual - l.pricelimit) * l.qtydelivered
        END AS marginamt
   FROM c_order o
JOIN cordln l ON o.c_order_id = l.c_order_id
JOIN matrseti pasi ON l.m_attributesetinstance_id = pasi.m_attributesetinstance_id;

