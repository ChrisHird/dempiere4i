-- View: pp_order_bomline_vt

-- DROP VIEW pp_order_bomline_vt;

 SELECT obl.ad_client_id,
    obl.ad_org_id,
    obl.isactive,
    obl.created,
    obl.createdby,
    obl.updated,
    obl.updatedby,
    oblt.ad_language,
    oblt.description,
    obl.feature,
    obl.m_product_id,
    obl.backflushgroup,
    obl.c_uom_id,
    obl.componenttype,
    obl.datedelivered,
    obl.forecast,
    oblt.help,
    obl.iscritical,
    obl.issuemethod,
    obl.leadtimeoffset,
    obl.line,
    obl.m_attributesetinstance_id,
    obl.m_changenotice_id,
    obl.m_locator_id,
    obl.m_warehouse_id,
    obl.pp_order_bom_id,
    obl.pp_order_bomline_id,
    obl.pp_order_id,
    obl.qtydelivered,
    obl.qtypost,
    obl.qtyreject,
    obl.qtyscrap,
    obl.scrap,
    obl.validfrom,
    obl.validto,
    obl.assay,
    obl.ad_user_id,
    o.qtybatchs,
    round(obl.qtyrequired, 4) AS qtyrequired,
    round(bomqtyreserved(obl.m_product_id, obl.m_warehouse_id, 0), 4) AS qtyreserved,
    round(bomqtyavailable(obl.m_product_id, obl.m_warehouse_id, 0), 4) AS qtyavailable,
    round(bomqtyonhand(obl.m_product_id, obl.m_warehouse_id, 0), 4) AS qtyonhand,
    round(obl.qtybom, 4) AS qtybom,
    obl.isqtypercentage,
    round(obl.qtybatch, 4) AS qtybatch,
        CASE
            WHEN o.qtybatchs = 0 THEN 1
            ELSE round(obl.qtyrequired / o.qtybatchs, 4)
        END AS qtybatchsize
FROM ppordboml obl
FROM ppordbomlt obl
     JOIN pp_order o ON o.pp_order_id = obl.pp_order_id
JOIN ppordbomlt oblt ON oblt.pp_order_bomline_id = obl.pp_order_bomline_id;

