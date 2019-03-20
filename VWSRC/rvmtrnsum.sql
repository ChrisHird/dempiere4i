-- View: rv_m_transaction_sum

-- DROP VIEW rv_m_transaction_sum;

 SELECT t.ad_client_id,
    t.ad_org_id,
    t.movementtype,
    l.m_warehouse_id,
    t.m_locator_id,
    t.m_product_id,
    t.movementdate,
    sum(t.movementqty) AS movementqty
FROM mtrn t,
FROM mtrnalc t,
    m_locator l
  WHERE t.m_locator_id = l.m_locator_id
  GROUP BY t.ad_client_id, t.ad_org_id, t.movementtype, l.m_warehouse_id, t.m_locator_id, t.m_product_id, t.movementdate;

