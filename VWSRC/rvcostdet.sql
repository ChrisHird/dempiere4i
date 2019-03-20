-- View: rv_costdetail

-- DROP VIEW rv_costdetail;

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
    c.m_inoutline_id,
    c.c_invoiceline_id,
    asi.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.lot,
    asi.serno,
    acct.c_acctschema_id,
    acct.c_currency_id,
    c.amt,
    c.qty,
    c.description,
    c.processed,
    c.m_warehouse_id
FROM mcstdet c
     JOIN m_product p ON c.m_product_id = p.m_product_id
JOIN caccs acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN caccsdft acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN caccse acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN caccsgl acct ON c.c_acctschema_id = acct.c_acctschema_id
JOIN matrseti asi ON c.m_attributesetinstance_id = asi.m_attributesetinstance_id;

