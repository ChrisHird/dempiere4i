﻿-- View: rv_transaction

-- DROP VIEW rv_transaction;

 SELECT t.m_transaction_id,
    t.ad_client_id,
    t.ad_org_id,
    t.movementtype,
    t.movementdate,
    t.movementqty,
    t.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate,
    t.m_product_id,
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
    t.m_locator_id,
    l.m_warehouse_id,
    l.x,
    l.y,
    l.z,
    t.m_inventoryline_id,
    il.m_inventory_id,
    t.m_movementline_id,
    ml.m_movement_id,
    t.m_inoutline_id,
    iol.m_inout_id,
    t.m_productionline_id,
    prdl.m_productionplan_id,
    prdl.m_production_id,
    t.c_projectissue_id,
    t.pp_cost_collector_id,
    COALESCE(il.line, ml.line, iol.line, prdl.line, pjl.line) AS line,
    COALESCE(i.movementdate, m.movementdate, io.dateacct, prd.movementdate, pjl.movementdate, cc.dateacct) AS dateacct,
    COALESCE(i.documentno, m.documentno, io.documentno, prd.name, pj.value, cc.documentno) AS documentno,
    COALESCE(i.c_doctype_id, m.c_doctype_id, io.c_doctype_id, 0, 0, cc.c_doctype_id) AS c_doctype_id,
    COALESCE(pjl.c_project_id, iol.c_project_id, i.c_project_id, m.c_project_id, cc.c_project_id) AS c_project_id,
    COALESCE(i.c_activity_id, iol.c_activity_id, m.c_activity_id, cc.c_activity_id) AS c_activity_id,
    COALESCE(i.c_campaign_id, iol.c_campaign_id, m.c_campaign_id) AS c_campaign_id,
    0 AS c_region_id,
    COALESCE(il.createdby, io.c_bpartner_id, m.c_bpartner_id) AS c_bpartner_id,
    COALESCE(i.user1_id, iol.user1_id, m.user1_id, cc.user1_id) AS user1_id,
    COALESCE(i.user2_id, iol.user2_id, m.user2_id, cc.user2_id) AS user2_id,
    COALESCE(i.user3_id, iol.user1_id, m.user3_id, cc.user3_id) AS user3_id,
    COALESCE(i.user4_id, iol.user4_id, m.user4_id, cc.user4_id) AS user4_id,
    p.lowlevel
FROM mtrn t
FROM mtrnalc t
     JOIN m_locator l ON t.m_locator_id = l.m_locator_id
     JOIN m_product p ON t.m_product_id = p.m_product_id
JOIN matrseti asi ON t.m_attributesetinstance_id = asi.m_attributesetinstance_id
JOIN mivtln il ON t.m_inventoryline_id = il.m_inventoryline_id
JOIN mivtlnma il ON t.m_inventoryline_id = il.m_inventoryline_id
JOIN mivt i ON il.m_inventory_id = i.m_inventory_id
JOIN mivtln i ON il.m_inventory_id = i.m_inventory_id
JOIN mivtlnma i ON il.m_inventory_id = i.m_inventory_id
JOIN mmovln ml ON t.m_movementline_id = ml.m_movementline_id
JOIN mmovlncfm ml ON t.m_movementline_id = ml.m_movementline_id
JOIN mmovlnma ml ON t.m_movementline_id = ml.m_movementline_id
     LEFT JOIN m_movement m ON ml.m_movement_id = m.m_movement_id
JOIN mioln iol ON t.m_inoutline_id = iol.m_inoutline_id
JOIN miolncfm iol ON t.m_inoutline_id = iol.m_inoutline_id
JOIN miolnma iol ON t.m_inoutline_id = iol.m_inoutline_id
     LEFT JOIN m_inout io ON iol.m_inout_id = io.m_inout_id
JOIN mpdnln prdl ON t.m_productionline_id = prdl.m_productionline_id
JOIN mprdlnma prdl ON t.m_productionline_id = prdl.m_productionline_id
JOIN mpdn prd ON prdl.m_production_id = prd.m_production_id
JOIN mprdbtch prd ON prdl.m_production_id = prd.m_production_id
JOIN mprdbtcln prd ON prdl.m_production_id = prd.m_production_id
JOIN mpdnln prd ON prdl.m_production_id = prd.m_production_id
JOIN mprdlnma prd ON prdl.m_production_id = prd.m_production_id
JOIN mpdnpln prd ON prdl.m_production_id = prd.m_production_id
JOIN cprojiss pjl ON t.c_projectissue_id = pjl.c_projectissue_id
JOIN cprjima pjl ON t.c_projectissue_id = pjl.c_projectissue_id
     LEFT JOIN c_project pj ON pjl.c_project_id = pj.c_project_id
JOIN ppcstcol cc ON t.pp_cost_collector_id = cc.pp_cost_collector_id;
JOIN ppcstcolrm cc ON t.pp_cost_collector_id = cc.pp_cost_collector_id;

