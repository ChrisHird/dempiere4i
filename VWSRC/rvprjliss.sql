-- View: rv_projectlineissue

-- DROP VIEW rv_projectlineissue;

 SELECT COALESCE(l.ad_client_id, i.ad_client_id) AS ad_client_id,
    COALESCE(l.ad_org_id, i.ad_org_id) AS ad_org_id,
    COALESCE(l.isactive, i.isactive) AS isactive,
    COALESCE(l.created, i.created) AS created,
    COALESCE(l.createdby, i.createdby) AS createdby,
    COALESCE(l.updated, i.updated) AS updated,
    COALESCE(l.updatedby, i.updatedby) AS updatedby,
    COALESCE(l.c_project_id, i.c_project_id) AS c_project_id,
    COALESCE(l.m_product_id, i.m_product_id) AS m_product_id,
    l.c_projectline_id,
    l.line,
    l.description,
    l.plannedqty,
    l.plannedprice,
    l.plannedamt,
    l.plannedmarginamt,
    l.committedqty,
    i.c_projectissue_id,
    i.m_locator_id,
    i.movementqty,
    i.movementdate,
    i.line AS issueline,
    i.description AS issuedescription,
    i.m_inoutline_id,
    i.s_timeexpenseline_id,
    fa.c_acctschema_id,
    fa.account_id,
    fa.amtsourcedr,
    fa.amtsourcecr,
    fa.amtacctdr,
    fa.amtacctcr,
    l.plannedamt - fa.amtsourcedr + fa.amtsourcecr AS linemargin
FROM cprojln l
JOIN cprojiss i ON i.c_project_id = l.c_project_id AND i.c_projectissue_id = l.c_projectissue_id
JOIN cprjima i ON i.c_project_id = l.c_project_id AND i.c_projectissue_id = l.c_projectissue_id
     LEFT JOIN fact_acct fa ON fa.ad_table_id = 623 AND fa.record_id = i.c_projectissue_id AND fa.m_locator_id IS NULL;

