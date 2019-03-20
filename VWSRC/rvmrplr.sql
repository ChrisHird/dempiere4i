-- View: rv_m_replenishplan_requisition

-- DROP VIEW rv_m_replenishplan_requisition;

 SELECT mrl.ad_client_id,
    mrl.ad_org_id,
    mrl.m_replenishplanline_id,
    mrl.m_replenishplan_id,
    r.m_requisition_id,
    r.documentno,
    rl.line,
    p.m_product_id,
    po.vendorproductno,
    rl.c_bpartner_id,
    rl.qty,
    rl.priceactual,
    rl.isactive,
    r.daterequired,
    p.m_product_category_id,
    rl.priceactual * rl.qty AS amount
FROM mrplplnln mrl
JOIN mreqln rl ON rl.m_requisition_id = mrl.m_requisition_id AND rl.m_product_id = mrl.m_product_id
JOIN mreq r ON r.m_requisition_id = rl.m_requisition_id
JOIN mreqln r ON r.m_requisition_id = rl.m_requisition_id
     JOIN m_product p ON p.m_product_id = rl.m_product_id
JOIN mprodpo po ON po.m_product_id = p.m_product_id AND po.c_bpartner_id = rl.c_bpartner_id
  ORDER BY r.m_requisition_id, rl.line;

