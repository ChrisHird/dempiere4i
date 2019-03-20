-- View: rv_storage

-- DROP VIEW rv_storage;

CREATE OR REPLACE VIEW rv_storage AS 
 SELECT s.ad_client_id,
    s.ad_org_id,
    s.m_product_id,
    p.value,
    p.name,
    p.description,
    p.upc,
    p.sku,
    p.c_uom_id,
    p.m_product_category_id,
    p.classification,
    p.weight,
    p.volume,
    p.versionno,
    p.guaranteedays,
    p.guaranteedaysmin,
    s.m_locator_id,
    l.m_warehouse_id,
    l.x,
    l.y,
    l.z,
    s.qtyonhand,
    s.qtyreserved,
    s.qtyonhand - s.qtyreserved AS qtyavailable,
    s.qtyordered,
    s.datelastinventory,
    s.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate,
    daysbetween(asi.guaranteedate, getdate()) AS shelflifedays,
    daysbetween(asi.guaranteedate, getdate()) - p.guaranteedaysmin AS goodfordays,
        CASE
            WHEN COALESCE(p.guaranteedays, 0) > 0 THEN round(daysbetween(asi.guaranteedate, getdate()) / 
			p.guaranteedays * 100, 0)
            ELSE NULL
        END AS shelfliferemainingpct
   FROM m_storage s
     JOIN m_locator l ON s.m_locator_id = l.m_locator_id
     JOIN m_product p ON s.m_product_id = p.m_product_id
JOIN matrseti asi ON s.m_attributesetinstance_id = asi.m_attributesetinstance_id;

