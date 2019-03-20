-- View: rv_pp_forecastrun

-- DROP VIEW rv_pp_forecastrun;

 SELECT frun.isactive,
    frun.created,
    frun.createdby,
    frun.updated,
    frun.updatedby,
    frun.ad_client_id,
    frun.ad_org_id,
    frun.pp_forecastrun_id,
    frun.documentno,
    frun.description,
    frun.pp_forecastrule_id,
    frun.pp_calendar_id,
    frun.pp_perioddefinition_id,
    frun.ref_definitionperiod_id,
    frun.periodhistory,
    fmaster.m_product_id,
    p.value,
    p.name,
    pc.m_product_category_id,
    pcl.m_product_classification_id,
    pclass.m_product_class_id,
    pg.m_product_group_id,
    frun.m_warehousesource_id,
    fmaster.factoralpha,
    fmaster.factorgamma,
    fmaster.factormultiplier,
    fmaster.factorscale,
    pd.name AS periodname,
    frun.m_warehouse_id,
    fdetail.qtycalculated AS qtyinvoiced,
    fresult.pp_period_id,
    pr.startdate,
    pr.enddate,
    fresult.periodno,
    fresult.description AS linedescription,
    fresult.qtycalculated,
    fresult.qtyplan,
    fresult.qtyabnormal
FROM ppfsrun frun
FROM ppfsrundt frun
FROM ppfsrunln frun
FROM ppfsrunmst frun
FROM ppfsrunrt frun
JOIN ppfsrunmst fmaster ON fmaster.pp_forecastrun_id = frun.pp_forecastrun_id
JOIN ppfsrundt fdetail ON fdetail.pp_forecastrunmaster_id = fmaster.pp_forecastrunmaster_id
JOIN ppfsrunrt fresult ON fresult.pp_forecastrunmaster_id = fmaster.pp_forecastrunmaster_id
     JOIN pp_period pd ON pd.pp_period_id = fdetail.pp_period_id
     JOIN pp_period pr ON pr.pp_period_id = fresult.pp_period_id
     JOIN m_product p ON p.m_product_id = fmaster.m_product_id
JOIN mprodcat pc ON pc.m_product_category_id = p.m_product_category_id
JOIN mprodcata pc ON pc.m_product_category_id = p.m_product_category_id
JOIN mprdclsn pcl ON pcl.m_product_classification_id = p.m_product_classification_id
JOIN mprdcls pclass ON pclass.m_product_class_id = p.m_product_class_id
JOIN mprdclsn pclass ON pclass.m_product_class_id = p.m_product_class_id
JOIN mprdgrp pg ON pg.m_product_group_id = p.m_product_group_id;

