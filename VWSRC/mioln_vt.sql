-- View: m_inout_line_vt

-- DROP VIEW m_inout_line_vt;

 SELECT iol.ad_client_id,
    iol.ad_org_id,
    iol.isactive,
    iol.created,
    iol.createdby,
    iol.updated,
    iol.updatedby,
    uom.ad_language,
    iol.m_inout_id,
    iol.m_inoutline_id,
    iol.line,
    p.m_product_id,
        CASE
            WHEN iol.movementqty <> 0 OR iol.m_product_id IS NOT NULL THEN iol.movementqty
            ELSE NULL
        END AS movementqty,
        CASE
            WHEN iol.qtyentered <> 0 OR iol.m_product_id IS NOT NULL THEN iol.qtyentered
            ELSE NULL
        END AS qtyentered,
        CASE
            WHEN iol.movementqty <> 0 OR iol.m_product_id IS NOT NULL THEN uom.uomsymbol
            ELSE NULL
        END AS uomsymbol,
    ol.qtyordered,
    ol.qtydelivered,
        CASE
            WHEN iol.movementqty <> 0 OR iol.m_product_id IS NOT NULL THEN ol.qtyordered - ol.qtydelivered
            ELSE NULL
        END AS qtybackordered,
    COALESCE(COALESCE(pt.name, p.name) || productattribute(iol.m_attributesetinstance_id), 
	c.name, iol.description) AS name,
        CASE
            WHEN COALESCE(pt.name, p.name, c.name) IS NOT NULL THEN iol.description
            ELSE NULL
        END AS description,
    COALESCE(pt.documentnote, p.documentnote) AS documentnote,
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
    asi.guaranteedate,
    pt.description AS productdescription,
    p.imageurl,
    iol.c_campaign_id,
    iol.c_project_id,
    iol.c_activity_id,
    iol.c_projectphase_id,
    iol.c_projecttask_id
FROM mioln iol
FROM miolncfm iol
FROM miolnma iol
     JOIN c_uom_trl uom ON iol.c_uom_id = uom.c_uom_id
     LEFT JOIN m_product p ON iol.m_product_id = p.m_product_id
JOIN mprodt pt ON iol.m_product_id = pt.m_product_id AND uom.ad_language = pt.ad_language
JOIN matrseti asi ON iol.m_attributesetinstance_id = asi.m_attributesetinstance_id
     LEFT JOIN m_locator l ON iol.m_locator_id = l.m_locator_id
JOIN cordln ol ON iol.c_orderline_id = ol.c_orderline_id
JOIN cchrgt c ON iol.c_charge_id = c.c_charge_id
UNION
 SELECT iol.ad_client_id,
    iol.ad_org_id,
    iol.isactive,
    iol.created,
    iol.createdby,
    iol.updated,
    iol.updatedby,
    uom.ad_language,
    iol.m_inout_id,
    iol.m_inoutline_id,
    iol.line + bl.line / 100 AS line,
    p.m_product_id,
        CASE
            WHEN bl.isqtypercentage = 'N' THEN iol.movementqty * bl.qtybom
            ELSE iol.movementqty * (bl.qtybatch / 100)
        END AS movementqty,
        CASE
            WHEN bl.isqtypercentage = 'N' THEN iol.qtyentered * bl.qtybom
            ELSE iol.qtyentered * (bl.qtybatch / 100)
        END AS qtyentered,
    uom.uomsymbol,
    NULL AS qtyordered,
    NULL AS qtydelivered,
    NULL AS qtybackordered,
    COALESCE(pt.name, p.name) AS name,
    b.description,
    COALESCE(pt.documentnote, p.documentnote) AS documentnote,
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
    asi.guaranteedate,
    pt.description AS productdescription,
    p.imageurl,
    iol.c_campaign_id,
    iol.c_project_id,
    iol.c_activity_id,
    iol.c_projectphase_id,
    iol.c_projecttask_id
FROM ppprdbom b
FROM ppprdbomt b
FROM ppprdboml b
FROM ppprdbomlt b
JOIN mioln iol ON b.m_product_id = iol.m_product_id
JOIN miolncfm iol ON b.m_product_id = iol.m_product_id
JOIN miolnma iol ON b.m_product_id = iol.m_product_id
     JOIN m_product bp ON bp.m_product_id = iol.m_product_id AND bp.isbom = 'Y' 
	 AND bp.isverified = 'Y' AND bp.ispicklistprintdetails = 'Y'
JOIN ppprdboml bl ON bl.pp_product_bom_id = b.pp_product_bom_id
JOIN ppprdbomlt bl ON bl.pp_product_bom_id = b.pp_product_bom_id
     JOIN m_product p ON bl.m_product_id = p.m_product_id
     JOIN c_uom_trl uom ON p.c_uom_id = uom.c_uom_id
JOIN mprodt pt ON bl.m_product_id = pt.m_product_id AND uom.ad_language = pt.ad_language
JOIN matrseti asi ON iol.m_attributesetinstance_id = asi.m_attributesetinstance_id
     LEFT JOIN m_locator l ON iol.m_locator_id = l.m_locator_id;

