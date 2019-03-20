-- View: pp_product_bomline_vt

-- DROP VIEW pp_product_bomline_vt;

 SELECT bl.feature,
    bl.ad_org_id,
    bl.assay,
    bl.backflushgroup,
    bl.c_uom_id,
    bl.componenttype,
    bl.created,
    bl.createdby,
    blt.ad_language,
    blt.description,
    bl.forecast,
    blt.help,
    bl.isactive,
    bl.iscritical,
    bl.isqtypercentage,
    bl.issuemethod,
    bl.leadtimeoffset,
    bl.line,
    bl.m_attributesetinstance_id,
    bl.m_changenotice_id,
    bl.m_product_id,
    bl.pp_product_bomline_id,
    bl.pp_product_bom_id,
    bl.qtybom,
    bl.qtybatch,
    bl.scrap,
    bl.updated,
    bl.updatedby,
    bl.validfrom,
    bl.ad_client_id,
    bl.validto
FROM ppprdboml bl
FROM ppprdbomlt bl
JOIN ppprdbomlt blt ON blt.pp_product_bomline_id = bl.pp_product_bomline_id;

