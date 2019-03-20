﻿-- View: rv_pp_mrp

-- DROP VIEW rv_pp_mrp;

CREATE OR REPLACE VIEW rv_pp_mrp AS 
 SELECT mrp.pp_mrp_id,
    mrp.ad_client_id,
    mrp.ad_org_id,
    mrp.created,
    mrp.createdby,
    mrp.isactive,
    mrp.isavailable,
    mrp.updated,
    mrp.updatedby,
    pp.ismps,
    mrp.name,
    mrp.description,
    mrp.c_order_id,
    mrp.c_orderline_id,
    mrp.dateordered,
    mrp.dateconfirm,
    mrp.datepromised,
    mrp.datestartschedule,
    mrp.datefinishschedule,
    mrp.datestart,
    mrp.datesimulation,
    mrp.docstatus,
    mrp.m_forecast_id,
    mrp.m_forecastline_id,
    mrp.value,
    mrp.m_product_id,
    mrp.m_requisition_id,
    mrp.m_requisitionline_id,
    mrp.m_warehouse_id,
    mrp.pp_order_id,
    mrp.pp_order_bomline_id,
    mrp.dd_order_id,
    mrp.dd_orderline_id,
    mrp.qty,
    mrp.s_resource_id,
    mrp.planner_id,
    mrp.priority,
    mrp.ordertype,
    mrp.typemrp,
    p.lowlevel,
    mrp.c_bpartner_id,
    mrp.version,
    documentno(mrp.pp_mrp_id) AS documentno,
    mrp.c_projectphase_id,
    mrp.c_projecttask_id,
    mrp.c_project_id,
    pp.isrequiredmrp,
    pp.isrequireddrp,
    p.ispurchased,
    p.isbom,
    p.m_product_category_id
   FROM pp_mrp mrp
     JOIN m_product p ON mrp.m_product_id = p.m_product_id
JOIN ppprdpln pp ON pp.m_product_id = mrp.m_product_id AND mrp.m_warehouse_id = pp.m_warehouse_id
  WHERE mrp.qty <> 0
UNION
 SELECT 0 AS pp_mrp_id,
    pp.ad_client_id,
    pp.ad_org_id,
    pp.created,
    pp.createdby,
    pp.isactive,
    'Y' AS isavailable,
    pp.updated,
    pp.updatedby,
    pp.ismps,
    NULL AS name,
    NULL AS description,
    NULL AS c_order_id,
    NULL AS c_orderline_id,
    now() AS dateordered,
    now() AS dateconfirm,
    now() AS datepromised,
    now() AS datestartschedule,
    now() AS datefinishschedule,
    now() AS datestart,
    now() AS datesimulation,
    'CO' AS docstatus,
    NULL AS m_forecast_id,
    NULL AS m_forecastline_id,
    NULL AS value,
    pp.m_product_id,
    NULL AS m_requisition_id,
    NULL AS m_requisitionline_id,
    pp.m_warehouse_id,
    NULL AS pp_order_id,
    NULL AS pp_order_bomline_id,
    NULL AS dd_order_id,
    NULL AS dd_orderline_id,
    pp.safetystock - bomqtyonhand(pp.m_product_id, pp.m_warehouse_id, 0) AS qty,
    pp.s_resource_id,
    NULL AS planner_id,
    NULL AS priority,
    'STK' AS ordertype,
    'D' AS typemrp,
    p.lowlevel,
    NULL AS c_bpartner_id,
    NULL AS version,
    'Safety Strock' AS documentno,
    NULL AS c_projectphase_id,
    NULL AS c_projecttask_id,
    NULL AS c_project_id,
    pp.isrequiredmrp,
    pp.isrequireddrp,
    p.ispurchased,
    p.isbom,
    p.m_product_category_id
FROM ppprdpln pp
     JOIN m_product p ON pp.m_product_id = p.m_product_id
  WHERE bomqtyonhand(pp.m_product_id, pp.m_warehouse_id, 0) < pp.safetystock;
