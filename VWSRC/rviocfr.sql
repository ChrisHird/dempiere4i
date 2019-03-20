-- View: rv_inout_createfrom

-- DROP VIEW rv_inout_createfrom;

 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.c_orderline_id AS rv_inout_createfrom_id,
    l.line,
        CASE
            WHEN l.qtyordered = 0 THEN 0
            ELSE l.qtyentered / l.qtyordered
        END * (l.qtyordered - sum(COALESCE(m.qty, 0))) AS qtyentered,
    l.c_uom_id,
    l.qtyordered - sum(COALESCE(m.qty, 0)) AS movementqty,
        CASE
            WHEN l.qtyordered = 0 THEN 0
            ELSE l.qtyentered / l.qtyordered
        END AS multiplier,
    p.m_locator_id,
    COALESCE(p.name, c.name) AS name,
    l.m_product_id,
    l.m_attributesetinstance_id,
    l.c_charge_id,
    l.description,
    po.vendorproductno,
    o.c_order_id,
    0 AS c_invoice_id,
    0 AS m_rma_id,
    o.dateordered AS datedoc,
    o.c_bpartner_id,
    o.docstatus,
    'O' AS createfromtype,
    l.c_activity_id,
    l.c_project_id,
    l.c_campaign_id,
    l.user1_id,
    l.user2_id
   FROM c_order o
JOIN cordln l ON l.c_order_id = o.c_order_id
JOIN mprodpo po ON l.m_product_id = po.m_product_id AND l.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_matchpo m ON l.c_orderline_id = m.c_orderline_id AND m.m_inoutline_id IS NOT NULL
     LEFT JOIN m_product p ON l.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
  WHERE l.qtyordered <> 0
  GROUP BY l.ad_client_id, l.ad_org_id, l.createdby, l.created, l.updatedby, l.updated, l.isactive,
  l.c_orderline_id, l.line, l.qtyordered, l.qtyentered, l.c_uom_id, p.m_locator_id, p.name, c.name,
  l.m_product_id, l.m_attributesetinstance_id, l.c_charge_id, l.description, po.vendorproductno, 
  o.c_order_id, o.dateordered, o.c_bpartner_id, o.docstatus, l.c_activity_id, l.c_project_id, 
  l.c_campaign_id, l.user1_id, l.user2_id
 HAVING (l.qtyordered - sum(COALESCE(m.qty, 0))) <> 0
UNION ALL
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.c_invoiceline_id AS rv_inout_createfrom_id,
    l.line,
        CASE
            WHEN l.qtyinvoiced = 0 THEN 0
            ELSE l.qtyentered / l.qtyinvoiced
        END * (l.qtyinvoiced - sum(COALESCE(m.qty, 0))) AS qtyentered,
    l.c_uom_id,
    l.qtyinvoiced - sum(COALESCE(m.qty, 0)) AS movementqty,
        CASE
            WHEN l.qtyinvoiced = 0 THEN 0
            ELSE l.qtyentered / l.qtyinvoiced
        END AS multiplier,
    p.m_locator_id,
    COALESCE(p.name, c.name) AS name,
    l.m_product_id,
    l.m_attributesetinstance_id,
    l.c_charge_id,
    l.description,
    po.vendorproductno,
    inv.c_order_id,
    inv.c_invoice_id,
    0 AS m_rma_id,
    inv.dateinvoiced AS datedoc,
    inv.c_bpartner_id,
    inv.docstatus,
    'I' AS createfromtype,
    l.c_activity_id,
    l.c_project_id,
    l.c_campaign_id,
    l.user1_id,
    l.user2_id
   FROM c_invoice inv
JOIN cinvln l ON l.c_invoice_id = inv.c_invoice_id
     LEFT JOIN m_product p ON l.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
JOIN mprodpo po ON l.m_product_id = po.m_product_id AND inv.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_matchinv m ON l.c_invoiceline_id = m.c_invoiceline_id AND l.qtyinvoiced <> 0
  GROUP BY l.ad_client_id, l.ad_org_id, l.createdby, l.created, l.updatedby, l.updated, l.isactive, 
  l.c_invoiceline_id, l.line, l.qtyinvoiced, l.qtyentered, l.c_uom_id, p.m_locator_id, p.name, c.name,
  l.m_product_id, l.m_attributesetinstance_id, l.c_charge_id, l.description, po.vendorproductno, 
  inv.c_order_id, inv.c_invoice_id, inv.dateinvoiced, inv.c_bpartner_id, inv.docstatus, l.c_activity_id,
  l.c_project_id, l.c_campaign_id, l.user1_id, l.user2_id
 HAVING (l.qtyinvoiced - sum(COALESCE(m.qty, 0))) <> 0
UNION ALL
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.m_rmaline_id AS rv_inout_createfrom_id,
    l.line,
    l.qty - COALESCE(iolp.movementqty, 0) AS qtyentered,
    COALESCE(iol.c_uom_id, 100) AS c_uom_id,
    l.qty - COALESCE(iolp.movementqty, 0) AS movementqty,
    1 AS multiplier,
    p.m_locator_id,
    COALESCE(p.name, c.name) AS name,
    iol.m_product_id,
    iol.m_attributesetinstance_id,
    NULL AS c_charge_id,
    l.description,
    NULL AS vendorproductno,
    NULL AS c_order_id,
    NULL AS c_invoice_id,
    r.m_rma_id,
    r.created AS datedoc,
    io.c_bpartner_id,
    r.docstatus,
    'A' AS createfromtype,
    0 AS c_activity_id,
    0 AS c_project_id,
    0 AS c_campaign_id,
    0 AS user1_id,
    0 AS user2_id
   FROM m_rma r
     JOIN m_rmaline l ON l.m_rma_id = r.m_rma_id
     JOIN m_inout io ON io.m_inout_id = r.inout_id
JOIN mioln iol ON iol.m_inoutline_id = l.m_inoutline_id
JOIN miolncfm iol ON iol.m_inoutline_id = l.m_inoutline_id
JOIN miolnma iol ON iol.m_inoutline_id = l.m_inoutline_id
     LEFT JOIN ( SELECT iolr.m_rmaline_id,
            sum(iolr.movementqty) AS movementqty
           FROM m_inout ior
JOIN mioln iolr ON iolr.m_inout_id = ior.m_inout_id
JOIN miolncfm iolr ON iolr.m_inout_id = ior.m_inout_id
JOIN miolnma iolr ON iolr.m_inout_id = ior.m_inout_id
          WHERE ior.docstatus = ANY (ARRAY['CO', 'CL'])
          GROUP BY iolr.m_rmaline_id) iolp ON iolp.m_rmaline_id = l.m_rmaline_id
     LEFT JOIN m_product p ON p.m_product_id = iol.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
  WHERE l.qty <> 0 AND (l.m_inoutline_id IS NOT NULL OR l.c_charge_id IS NOT NULL);

