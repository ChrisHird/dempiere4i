-- View: rv_pp_product_bomline_storage

-- DROP VIEW rv_pp_product_bomline_storage;

 SELECT t.ad_client_id,
    t.ad_org_id,
    t.createdby,
    t.updatedby,
    t.updated,
    t.created,
    t.ad_pinstance_id,
    t.seqno,
    t.levelno,
    t.levels,
    t.m_product_id AS tm_product_id,
    t.sel_product_id AS m_product_id,
    t.qtybom,
    t.datetrx,
    bl.isactive,
    bl.pp_product_bom_id,
    bl.pp_product_bomline_id,
    bl.description,
    bl.iscritical,
    bl.componenttype,
    bl.c_uom_id,
    bl.issuemethod,
    bl.line,
    bl.m_attributesetinstance_id,
    bl.scrap,
    bl.validfrom,
    bl.validto,
    bl.isqtypercentage,
    bl.backflushgroup,
    bl.leadtimeoffset,
    s.qtyonhand,
    round(t.qtyrequired, 4) AS qtyrequired,
    round(bomqtyreserved(t.m_product_id, t.m_warehouse_id, 0), 4) AS qtyreserved,
    round(bomqtyavailable(t.m_product_id, t.m_warehouse_id, 0), 4) AS qtyavailable,
    t.m_warehouse_id,
    l.m_locator_id,
    l.x,
    l.y,
    l.z
   FROM t_bomline t
JOIN ppprdboml bl ON t.pp_product_bomline_id = bl.pp_product_bomline_id
JOIN ppprdbomlt bl ON t.pp_product_bomline_id = bl.pp_product_bomline_id
     LEFT JOIN m_storage s ON s.m_product_id = t.m_product_id AND s.qtyonhand <> 0 AND (EXISTS ( SELECT 1
           FROM m_locator ld
          WHERE s.m_locator_id = ld.m_locator_id AND ld.m_warehouse_id = t.m_warehouse_id))
     LEFT JOIN m_locator l ON l.m_locator_id = s.m_locator_id;

