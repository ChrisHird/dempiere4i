-- View: rv_cost

-- DROP VIEW rv_cost;

CREATE OR REPLACE VIEW rv_cost AS 
 SELECT c.ad_client_id,
    c.ad_org_id,
    c.isactive,
    c.created,
    c.createdby,
    c.updated,
    c.updatedby,
    p.m_product_id,
    p.value,
    p.name,
    p.upc,
    p.isbom,
    p.producttype,
    p.m_product_category_id,
    c.m_costtype_id,
    ce.m_costelement_id,
    ce.costelementtype,
    ce.costingmethod,
    ce.iscalculated,
    acct.c_acctschema_id,
    acct.c_currency_id,
    c.currentcostprice,
    c.futurecostprice,
    c.description,
    c.currentcostpricell,
    c.futurecostpricell,
    c.iscostfrozen,
    c.m_warehouse_id
   FROM m_cost c
     JOIN m_product p ON c.m_product_id = p.m_product_id
JOIN mcstelm ce ON c.m_costelement_id = ce.m_costelement_id
JOIN caccs acct ON c.c_acctschema_id = acct.c_acctschema_id;
JOIN caccsdft acct ON c.c_acctschema_id = acct.c_acctschema_id;
JOIN caccse acct ON c.c_acctschema_id = acct.c_acctschema_id;
JOIN caccsgl acct ON c.c_acctschema_id = acct.c_acctschema_id;

