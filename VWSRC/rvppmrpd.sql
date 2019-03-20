-- View: rv_pp_mrp_demand

-- DROP VIEW rv_pp_mrp_demand;

 SELECT mrp.ad_client_id,
    mrp.ad_org_id,
    mrp.created,
    mrp.createdby,
    mrp.updated,
    mrp.updatedby,
    mrp.isactive,
    mrp.pp_mrp_id,
    mrp.documentno,
    mrp.ordertype,
    mrp.docstatus,
    mrp.c_bpartner_id,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN ( SELECT o.c_bpartner_location_id
               FROM c_order o
              WHERE o.c_order_id = mrp.c_order_id)
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT o.c_bpartner_location_id
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT max(bpl.c_bpartner_location_id) AS max
FROM cbploc bpl
              WHERE bpl.c_bpartner_location_id = mrp.c_bpartner_id AND bpl.isshipto = 'Y' AND bpl.isactive = 'Y')
            ELSE NULL
        END AS c_bpartner_location_id,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN ( SELECT o.m_shipper_id
               FROM c_order o
              WHERE o.c_order_id = mrp.c_order_id)
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT o.m_shipper_id
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT o.m_shipper_id
               FROM pp_order o
              WHERE o.pp_order_id = mrp.pp_order_id)
            ELSE NULL
        END AS m_shipper_id,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN NULL
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT o.trackingno
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT o.trackingno
               FROM pp_order o
              WHERE o.pp_order_id = mrp.pp_order_id)
            ELSE NULL
        END AS trackingno,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN ( SELECT o.deliveryrule
               FROM c_order o
              WHERE o.c_order_id = mrp.c_order_id)
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT o.deliveryrule
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT o.deliveryrule
               FROM pp_order o
              WHERE o.pp_order_id = mrp.pp_order_id)
            ELSE NULL
        END AS deliveryrule,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN ( SELECT o.deliveryviarule
               FROM c_order o
              WHERE o.c_order_id = mrp.c_order_id)
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT o.deliveryviarule
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT o.deliveryviarule
               FROM pp_order o
              WHERE o.pp_order_id = mrp.pp_order_id)
            ELSE NULL
        END AS deliveryviarule,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN ( SELECT o.m_freightcategory_id
               FROM c_order o
              WHERE o.c_order_id = mrp.c_order_id)
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT p.m_freightcategory_id
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT o.m_freightcategory_id
               FROM pp_order o
              WHERE o.pp_order_id = mrp.pp_order_id)
            ELSE NULL
        END AS m_freightcategory_id,
        CASE
            WHEN mrp.ordertype = 'SOO' THEN ( SELECT o.freightcostrule
               FROM c_order o
              WHERE o.c_order_id = mrp.c_order_id)
            WHEN mrp.ordertype = 'DOO' THEN ( SELECT o.freightcostrule
               FROM dd_order o
              WHERE o.dd_order_id = mrp.dd_order_id)
            WHEN mrp.ordertype = 'MOP' THEN ( SELECT o.freightcostrule
               FROM pp_order o
              WHERE o.pp_order_id = mrp.pp_order_id)
            ELSE NULL
        END AS freightcostrule,
    mrp.planner_id,
    mrp.s_resource_id,
    mrp.m_warehouse_id,
    mrp.dateordered,
    mrp.datepromised,
    mrp.priority,
    mrp.m_product_id,
    p.m_attributesetinstance_id,
    p.sku,
    p.c_uom_id,
    p.issold,
    mrp.m_product_category_id,
    mrp.isbom,
    mrp.ispurchased,
    mrp.qty,
    mrp.ismps,
    mrp.isrequiredmrp,
    mrp.isrequireddrp,
    mrp.c_project_id,
    mrp.c_projectphase_id,
    mrp.c_projecttask_id,
    mrp.datestartschedule,
    mrp.datefinishschedule,
    p.weight * mrp.qty AS weight,
    p.volume * mrp.qty AS volume,
    bomqtyonhand(mrp.m_product_id, mrp.m_warehouse_id, 0) AS qtyonhand,
    bomqtyordered(mrp.m_product_id, mrp.m_warehouse_id, 0) AS qtyordered,
    bomqtyreserved(mrp.m_product_id, mrp.m_warehouse_id, 0) AS qtyreserved,
    bomqtyavailable(mrp.m_product_id, mrp.m_warehouse_id, 0) AS qtyavailable
   FROM rv_pp_mrp mrp
     JOIN m_product p ON p.m_product_id = mrp.m_product_id
  WHERE mrp.typemrp = 'D' AND mrp.qty > 0
  ORDER BY mrp.datepromised;

