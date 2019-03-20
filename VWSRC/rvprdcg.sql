-- View: rv_product_costing

-- DROP VIEW rv_product_costing;

 SELECT pc.m_product_id,
    pc.c_acctschema_id,
    p.value,
    p.name,
    p.m_product_category_id,
    pc.ad_client_id,
    pc.ad_org_id,
    pc.isactive,
    pc.created,
    pc.createdby,
    pc.updated,
    pc.updatedby,
    pc.currentcostprice,
    pc.futurecostprice,
    pc.coststandard,
    pc.coststandardpoqty,
    pc.coststandardpoamt,
        CASE
            WHEN pc.coststandardpoqty = 0 THEN 0
            ELSE pc.coststandardpoamt / pc.coststandardpoqty
        END AS coststandardpodiff,
    pc.coststandardcumqty,
    pc.coststandardcumamt,
        CASE
            WHEN pc.coststandardcumqty = 0 THEN 0
            ELSE pc.coststandardcumamt / pc.coststandardcumqty
        END AS coststandardinvdiff,
    pc.costaverage,
    pc.costaveragecumqty,
    pc.costaveragecumamt,
    pc.totalinvqty,
    pc.totalinvamt,
        CASE
            WHEN pc.totalinvqty = 0 THEN 0
            ELSE pc.totalinvamt / pc.totalinvqty
        END AS totalinvcost,
    pc.pricelastpo,
    pc.pricelastinv
FROM mprodcst pc
     JOIN m_product p ON pc.m_product_id = p.m_product_id;

