-- View: rv_pp_product_costing

-- DROP VIEW rv_pp_product_costing;

 SELECT p.m_product_id,
    cost.c_acctschema_id,
    p.value,
    p.name,
    p.m_product_category_id,
    p.m_product_class_id,
    p.m_product_group_id,
    p.m_product_classification_id,
    p.isstocked,
    cost.ad_client_id,
    cost.ad_org_id,
    cost.m_warehouse_id,
    cost.m_costtype_id,
    cost.m_costelement_id,
    cost.m_attributesetinstance_id,
    cost.isactive,
    cost.created,
    cost.createdby,
    cost.updated,
    cost.updatedby,
    cost.currentqty,
    cost.currentcostprice,
    cost.currentcostpricell,
    cost.cumulatedamt,
    cost.cumulatedamtll,
    cost.futurecostprice,
    cost.futurecostpricell,
    cost.description,
    cost.percent,
    cost.iscostfrozen
   FROM m_product p
     LEFT JOIN m_cost cost ON p.m_product_id = cost.m_product_id;

