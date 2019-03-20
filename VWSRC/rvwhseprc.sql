-- View: rv_warehouseprice

-- DROP VIEW rv_warehouseprice;

 SELECT w.ad_client_id,
    w.ad_org_id,
        CASE
            WHEN p.discontinued = 'N' THEN 'Y'
            ELSE 'N'
        END AS isactive,
    pr.created,
    pr.createdby,
    pr.updated,
    pr.updatedby,
    p.m_product_id,
    pr.m_pricelist_version_id,
    w.m_warehouse_id,
    p.value,
    p.name,
    p.upc,
    p.sku,
    uom.c_uom_id,
    uom.uomsymbol,
    bompricelist(p.m_product_id, pr.m_pricelist_version_id) AS pricelist,
    bompricestd(p.m_product_id, pr.m_pricelist_version_id) AS pricestd,
    bompricestd(p.m_product_id, pr.m_pricelist_version_id) - bompricelimit(p.m_product_id, pr.m_pricelist_version_id) AS margin,
    bompricelimit(p.m_product_id, pr.m_pricelist_version_id) AS pricelimit,
    w.name AS warehousename,
    bomqtyavailable(p.m_product_id, w.m_warehouse_id, 0) AS qtyavailable,
    bomqtyonhand(p.m_product_id, w.m_warehouse_id, 0) AS qtyonhand,
    bomqtyreserved(p.m_product_id, w.m_warehouse_id, 0) AS qtyreserved,
    bomqtyordered(p.m_product_id, w.m_warehouse_id, 0) AS qtyordered,
    COALESCE(pa.isinstanceattribute, 'N') AS isinstanceattribute
   FROM m_product p
JOIN mprodp pr ON p.m_product_id = pr.m_product_id
JOIN mprdpvbrk pr ON p.m_product_id = pr.m_product_id
     JOIN c_uom uom ON p.c_uom_id = uom.c_uom_id
JOIN matrset pa ON p.m_attributeset_id = pa.m_attributeset_id
JOIN matrsexcl pa ON p.m_attributeset_id = pa.m_attributeset_id
JOIN matrseti pa ON p.m_attributeset_id = pa.m_attributeset_id
JOIN mwhse w ON p.ad_client_id = w.ad_client_id
JOIN mwhsea w ON p.ad_client_id = w.ad_client_id
  WHERE p.issummary = 'N' AND p.isactive = 'Y' AND pr.isactive = 'Y' AND w.isactive = 'Y';

