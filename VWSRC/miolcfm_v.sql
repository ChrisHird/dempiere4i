﻿-- View: m_inout_lineconfirm_v

-- DROP VIEW m_inout_lineconfirm_v;

 SELECT iolc.ad_client_id,
    iolc.ad_org_id,
    iolc.isactive,
    iolc.created,
    iolc.createdby,
    iolc.updated,
    iolc.updatedby,
    'en_US' AS ad_language,
    iolc.m_inoutlineconfirm_id,
    iolc.m_inoutconfirm_id,
    iolc.targetqty,
    iolc.confirmedqty,
    iolc.differenceqty,
    iolc.scrappedqty,
    iolc.description,
    iolc.processed,
    iol.m_inout_id,
    iol.m_inoutline_id,
    iol.line,
    p.m_product_id,
    iol.movementqty,
    uom.uomsymbol,
    ol.qtyordered - ol.qtydelivered AS qtybackordered,
    COALESCE(p.name, iol.description) AS name,
        CASE
            WHEN p.name IS NOT NULL THEN iol.description
            ELSE NULL
        END AS shipdescription,
    p.documentnote,
    p.upc,
    p.sku,
    p.value AS productvalue,
    iol.m_locator_id,
    l.m_warehouse_id,
    l.x,
    l.y,
    l.z,
    iol.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate
FROM miolncfm iolc
JOIN mioln iol ON iolc.m_inoutline_id = iol.m_inoutline_id
JOIN miolncfm iol ON iolc.m_inoutline_id = iol.m_inoutline_id
JOIN miolnma iol ON iolc.m_inoutline_id = iol.m_inoutline_id
     JOIN c_uom uom ON iol.c_uom_id = uom.c_uom_id
     LEFT JOIN m_product p ON iol.m_product_id = p.m_product_id
JOIN matrseti asi ON iol.m_attributesetinstance_id = asi.m_attributesetinstance_id
     LEFT JOIN m_locator l ON iol.m_locator_id = l.m_locator_id
JOIN cordln ol ON iol.c_orderline_id = ol.c_orderline_id;

