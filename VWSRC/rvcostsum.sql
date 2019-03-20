-- View: rv_costsummary

-- DROP VIEW rv_costsummary;

 SELECT c.ad_client_id,
    c.ad_org_id,
    c.isactive,
    0 AS createdby,
    getdate() AS created,
    0 AS updatedby,
    getdate() AS updated,
    p.m_product_id,
    p.value,
    p.name,
    p.upc,
    p.isbom,
    p.producttype,
    p.m_product_category_id,
    c.m_costtype_id,
    acct.c_acctschema_id,
    acct.c_currency_id,
    sum(c.currentcostprice) AS currentcostprice,
    sum(c.futurecostprice) AS futurecostprice,
    c.m_warehouse_id
   FROM m_cost c
     JOIN m_product p ON c.m_product_id = p.m_product_id
JOIN caccs acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN caccsdft acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN caccse acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN caccsgl acct ON c.c_acctschema_id = acct.c_acctschema_id
  WHERE acct.m_costtype_id = c.m_costtype_id
  GROUP BY c.ad_client_id, c.ad_org_id, c.isactive, p.m_product_id, p.value, p.name, p.upc, p.isbom, p.producttype,
  p.m_product_category_id, c.m_costtype_id, acct.c_acctschema_id, acct.c_currency_id, c.m_warehouse_id;

