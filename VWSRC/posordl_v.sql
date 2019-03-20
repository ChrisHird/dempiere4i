-- View: pos_orderline_v

-- DROP VIEW pos_orderline_v;

 SELECT ol.c_orderline_id,
    ol.c_order_id,
    ol.ad_client_id,
    ol.ad_org_id,
    ol.isactive,
    ol.created,
    ol.createdby,
    ol.updated,
    ol.updatedby,
    p.name AS productname,
    ol.priceactual,
    ol.qtyordered,
    uom.uomsymbol,
    t.taxindicator,
    t.rate,
    ol.linenetamt,
    ol.linenetamt + ol.linenetamt * t.rate / 100 AS grandtotal,
    ol.discount
FROM cordln ol
     JOIN c_uom uom ON ol.c_uom_id = uom.c_uom_id
     JOIN c_order i ON ol.c_order_id = i.c_order_id
     LEFT JOIN m_product p ON ol.m_product_id = p.m_product_id
     LEFT JOIN c_tax t ON ol.c_tax_id = t.c_tax_id
  ORDER BY ol.line DESC;

