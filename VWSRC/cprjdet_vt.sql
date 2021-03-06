﻿-- View: c_project_details_vt

-- DROP VIEW c_project_details_vt;

 SELECT pl.ad_client_id,
    pl.ad_org_id,
    pl.isactive,
    pl.created,
    pl.createdby,
    pl.updated,
    pl.updatedby,
    l.ad_language,
    pj.c_project_id,
    pl.c_projectline_id,
    pl.line,
    pl.plannedqty,
    pl.plannedprice,
    pl.plannedamt,
    pl.plannedmarginamt,
    pl.committedamt,
    pl.m_product_id,
    COALESCE(p.name, pl.description) AS name,
        CASE
            WHEN p.name IS NOT NULL THEN pl.description
            ELSE NULL
        END AS description,
    p.documentnote,
    p.upc,
    p.sku,
    p.value AS productvalue,
    pl.m_product_category_id,
    pl.invoicedamt,
    pl.invoicedqty,
    pl.committedqty
FROM cprojln pl
     JOIN c_project pj ON pl.c_project_id = pj.c_project_id
     LEFT JOIN m_product p ON pl.m_product_id = p.m_product_id
JOIN adlng l ON l.issystemlanguage = 'Y'
  WHERE pl.isprinted = 'Y';

