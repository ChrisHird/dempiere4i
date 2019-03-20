-- View: rv_t_bomline_costs

-- DROP VIEW rv_t_bomline_costs;

 SELECT t.seqno,
    t.levelno,
    t.levels,
    t.ad_client_id,
    t.c_acctschema_id,
    t.ad_org_id,
    t.createdby,
    t.updatedby,
    t.updated,
    t.created,
    t.ad_pinstance_id,
    t.implosion,
    t.sel_product_id AS m_product_id,
    t.m_costelement_id,
    t.currentcostprice,
    t.currentcostpricell,
    t.futurecostprice,
    t.futurecostpricell,
    t.iscostfrozen,
    t.qtybom,
    (t.currentcostprice + t.currentcostpricell) * t.qtybom AS cost,
    (t.futurecostprice + t.futurecostpricell) * t.qtybom AS coststandard,
    t.m_costtype_id,
    t.costingmethod,
    bl.isactive,
    bl.pp_product_bom_id,
    bl.pp_product_bomline_id,
    bl.description,
    bl.iscritical,
    bl.componenttype,
    t.m_product_id AS tm_product_id,
    bl.c_uom_id,
    bl.issuemethod,
    bl.line,
    bl.m_attributesetinstance_id,
    bl.scrap,
    bl.validfrom,
    bl.validto,
    bl.isqtypercentage
   FROM t_bomline t
JOIN ppprdboml bl ON t.pp_product_bomline_id = bl.pp_product_bomline_id;
JOIN ppprdbomlt bl ON t.pp_product_bomline_id = bl.pp_product_bomline_id;

