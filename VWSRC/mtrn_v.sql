-- View: m_transaction_v

-- DROP VIEW m_transaction_v;

 SELECT t.m_transaction_id,
    t.ad_client_id,
    t.ad_org_id,
    t.isactive,
    t.created,
    t.createdby,
    t.updated,
    t.updatedby,
    t.movementtype,
    t.m_locator_id,
    t.m_product_id,
    t.movementdate,
    t.movementqty,
    t.m_inventoryline_id,
    i.m_inventory_id,
    t.m_movementline_id,
    m.m_movement_id,
    t.m_inoutline_id,
    io.m_inout_id,
    t.m_productionline_id,
    pp.m_production_id,
    t.c_projectissue_id,
    pi.c_project_id,
    t.m_attributesetinstance_id
FROM mtrn t
FROM mtrnalc t
JOIN mioln io ON t.m_inoutline_id = io.m_inoutline_id AND t.m_attributesetinstance_id = io.m_attributesetinstance_id
JOIN miolncfm io ON t.m_inoutline_id = io.m_inoutline_id AND t.m_attributesetinstance_id = io.m_attributesetinstance_id
JOIN miolnma io ON t.m_inoutline_id = io.m_inoutline_id AND t.m_attributesetinstance_id = io.m_attributesetinstance_id
JOIN mmovln m ON t.m_movementline_id = m.m_movementline_id AND t.m_attributesetinstance_id = m.m_attributesetinstance_id
JOIN mmovlncfm m ON t.m_movementline_id = m.m_movementline_id AND t.m_attributesetinstance_id = m.m_attributesetinstance_id
JOIN mmovlnma m ON t.m_movementline_id = m.m_movementline_id AND t.m_attributesetinstance_id = m.m_attributesetinstance_id
JOIN mivtln i ON t.m_inventoryline_id = i.m_inventoryline_id AND t.m_attributesetinstance_id = i.m_attributesetinstance_id
JOIN mivtlnma i ON t.m_inventoryline_id = i.m_inventoryline_id AND t.m_attributesetinstance_id = i.m_attributesetinstance_id
JOIN cprojiss pi ON t.c_projectissue_id = pi.c_projectissue_id AND t.m_attributesetinstance_id = pi.m_attributesetinstance_id
JOIN cprjima pi ON t.c_projectissue_id = pi.c_projectissue_id AND t.m_attributesetinstance_id = pi.m_attributesetinstance_id
JOIN mpdnln pl ON t.m_productionline_id = pl.m_productionline_id AND t.m_attributesetinstance_id = pl.m_attributesetinstance_id
JOIN mprdlnma pl ON t.m_productionline_id = pl.m_productionline_id AND t.m_attributesetinstance_id = pl.m_attributesetinstance_id
JOIN mpdnpln pp ON pl.m_productionplan_id = pp.m_productionplan_id;

