-- View: rv_m_transaction

-- DROP VIEW rv_m_transaction;

 SELECT t.ad_client_id,
    t.ad_org_id,
    t.movementdate,
    t.movementqty,
    t.m_product_id,
    t.m_locator_id,
    t.m_attributesetinstance_id,
    p.m_product_category_id,
    p.value,
    po.c_bpartner_id,
    po.pricepo,
    po.pricelastpo,
    po.pricelist
FROM mtrn t
FROM mtrnalc t
     JOIN m_product p ON t.m_product_id = p.m_product_id
JOIN mprodpo po ON t.m_product_id = po.m_product_id
  WHERE po.iscurrentvendor = 'Y';

