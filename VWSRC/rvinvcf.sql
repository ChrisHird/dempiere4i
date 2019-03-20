-- View: rv_invoice_createfrom

-- DROP VIEW rv_invoice_createfrom;

 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.c_orderline_id AS rv_invoice_createfrom_id,
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
    COALESCE(p.name, c.name) AS name,
    l.m_product_id,
    l.m_attributesetinstance_id,
    l.c_charge_id,
    l.description,
    po.vendorproductno,
    o.c_order_id,
    0 AS c_invoice_id,
    0 AS m_inout_id,
    0 AS m_rma_id,
    o.dateordered AS datedoc,
    o.c_bpartner_id,
    o.docstatus,
    'O' AS createfromtype
   FROM c_order o
JOIN cordln l ON l.c_order_id = o.c_order_id
JOIN mprodpo po ON l.m_product_id = po.m_product_id AND l.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_matchpo m ON l.c_orderline_id = m.c_orderline_id AND m.c_invoiceline_id IS NOT NULL
     LEFT JOIN m_product p ON l.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
  WHERE l.qtyordered <> 0
  GROUP BY l.ad_client_id, l.ad_org_id, l.createdby, l.created, l.updatedby, l.updated, l.isactive, 
  l.c_orderline_id, l.line, l.qtyordered, l.qtyentered, l.c_uom_id, p.name, c.name, l.m_product_id, 
  l.m_attributesetinstance_id, l.c_charge_id, l.description, po.vendorproductno, o.c_order_id, 
  o.dateordered, o.c_bpartner_id, o.docstatus
 HAVING (l.qtyordered - sum(COALESCE(m.qty, 0))) <> 0
UNION ALL
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.m_inoutline_id AS rv_invoice_createfrom_id,
    l.line,
        CASE
            WHEN l.movementqty = 0 THEN 0
            ELSE l.qtyentered / l.movementqty
        END * (l.movementqty - sum(COALESCE(m.qty, 0))) AS qtyentered,
    l.c_uom_id,
    l.movementqty - sum(COALESCE(m.qty, 0)) AS movementqty,
        CASE
            WHEN l.movementqty = 0 THEN 0
            ELSE l.qtyentered / l.movementqty
        END AS multiplier,
    COALESCE(p.name, c.name) AS name,
    l.m_product_id,
    l.m_attributesetinstance_id,
    l.c_charge_id,
    l.description,
    po.vendorproductno,
    io.c_order_id,
    0 AS c_invoice_id,
    io.m_inout_id,
    0 AS m_rma_id,
    io.movementdate AS datedoc,
    io.c_bpartner_id,
    io.docstatus,
    'R' AS createfromtype
   FROM m_inout io
JOIN mioln l ON l.m_inout_id = io.m_inout_id
JOIN miolncfm l ON l.m_inout_id = io.m_inout_id
JOIN miolnma l ON l.m_inout_id = io.m_inout_id
     LEFT JOIN m_product p ON l.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
JOIN mprodpo po ON l.m_product_id = po.m_product_id AND io.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_matchinv m ON l.m_inoutline_id = m.m_inoutline_id AND l.movementqty <> 0
  GROUP BY l.ad_client_id, l.ad_org_id, l.createdby, l.created, l.updatedby, l.updated, 
  l.isactive, l.m_inoutline_id, l.line, l.movementqty, l.qtyentered, l.c_uom_id, p.name, 
  c.name, l.m_product_id, l.m_attributesetinstance_id, l.c_charge_id, l.description, po.vendorproductno, 
  io.c_order_id, io.m_inout_id, io.movementdate, io.c_bpartner_id, io.docstatus
 HAVING (l.movementqty - sum(COALESCE(m.qty, 0))) <> 0
UNION ALL
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.m_rmaline_id AS rv_invoice_createfrom_id,
    l.line,
    l.qty - COALESCE(inlp.qtyinvoiced, 0) AS qtyentered,
    COALESCE(iol.c_uom_id, 100) AS c_uom_id,
    l.qty - COALESCE(inlp.qtyinvoiced, 0) AS movementqty,
    1 AS multiplier,
    COALESCE(p.name, c.name) AS name,
    iol.m_product_id,
    iol.m_attributesetinstance_id,
    NULL AS c_charge_id,
    l.description,
    NULL AS vendorproductno,
    0 AS c_order_id,
    0 AS c_invoice_id,
    0 AS m_inout_id,
    r.m_rma_id,
    r.created AS datedoc,
    io.c_bpartner_id,
    r.docstatus,
    'A' AS createfromtype
   FROM m_rma r
     JOIN m_rmaline l ON l.m_rma_id = r.m_rma_id
     JOIN m_inout io ON io.m_inout_id = r.inout_id
JOIN mioln iol ON iol.m_inoutline_id = l.m_inoutline_id
JOIN miolncfm iol ON iol.m_inoutline_id = l.m_inoutline_id
JOIN miolnma iol ON iol.m_inoutline_id = l.m_inoutline_id
     LEFT JOIN ( SELECT inlr.m_rmaline_id,
            sum(inlr.qtyinvoiced) AS qtyinvoiced
           FROM c_invoice inr
JOIN cinvln inlr ON inlr.c_invoice_id = inr.c_invoice_id
          WHERE inr.docstatus = ANY (ARRAY['CO', 'CL'])
          GROUP BY inlr.m_rmaline_id) inlp ON inlp.m_rmaline_id = l.m_rmaline_id
     LEFT JOIN m_product p ON p.m_product_id = iol.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id
  WHERE l.qty <> 0 AND (l.m_inoutline_id IS NOT NULL OR l.c_charge_id IS NOT NULL)
UNION ALL
 SELECT l.ad_client_id,
    l.ad_org_id,
    l.createdby,
    l.created,
    l.updatedby,
    l.updated,
    l.isactive,
    l.c_invoiceline_id AS rv_invoice_createfrom_id,
    l.line,
        CASE
            WHEN l.qtyinvoiced = 0 THEN 0
            ELSE l.qtyentered / l.qtyinvoiced
        END * l.qtyinvoiced AS qtyentered,
    l.c_uom_id,
    l.qtyinvoiced AS movementqty,
        CASE
            WHEN l.qtyinvoiced = 0 THEN 0
            ELSE l.qtyentered / l.qtyinvoiced
        END AS multiplier,
    COALESCE(p.name, c.name) AS name,
    l.m_product_id,
    l.m_attributesetinstance_id,
    l.c_charge_id,
    l.description,
    po.vendorproductno,
    0 AS c_order_id,
    i.c_invoice_id,
    0 AS m_inout_id,
    0 AS m_rma_id,
    i.dateinvoiced AS datedoc,
    i.c_bpartner_id,
    i.docstatus,
    'I' AS createfromtype
   FROM c_invoice i
JOIN cinvln l ON l.c_invoice_id = i.c_invoice_id
JOIN mprodpo po ON l.m_product_id = po.m_product_id AND i.c_bpartner_id = po.c_bpartner_id
     LEFT JOIN m_product p ON l.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON l.c_charge_id = c.c_charge_id;

