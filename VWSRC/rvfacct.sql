-- View: rv_fact_acct

-- DROP VIEW rv_fact_acct;

 SELECT f.ad_client_id,
    f.ad_org_id,
    f.isactive,
    f.created,
    f.createdby,
    f.updated,
    f.updatedby,
    f.fact_acct_id,
    f.c_acctschema_id,
    f.account_id,
    f.datetrx,
    f.dateacct,
    f.c_period_id,
    f.ad_table_id,
    f.record_id,
    f.line_id,
    f.gl_category_id,
    f.gl_budget_id,
    f.c_tax_id,
    f.m_locator_id,
    f.postingtype,
    f.c_currency_id,
    f.amtsourcedr,
    f.amtsourcecr,
    f.amtsourcedr - f.amtsourcecr AS amtsource,
    f.amtacctdr,
    f.amtacctcr,
    f.amtacctdr - f.amtacctcr AS amtacct,
        CASE
            WHEN (f.amtsourcedr - f.amtsourcecr) = 0 THEN 0
            ELSE (f.amtacctdr - f.amtacctcr) / (f.amtsourcedr - f.amtsourcecr)
        END AS rate,
    f.c_uom_id,
    f.qty,
    f.m_product_id,
    f.c_bpartner_id,
    f.ad_orgtrx_id,
    f.c_locfrom_id,
    f.c_locto_id,
    f.c_salesregion_id,
    f.c_project_id,
    f.c_campaign_id,
    f.c_activity_id,
    f.user1_id,
    f.user2_id,
    f.user3_id,
    f.user4_id,
    f.userelement1_id,
    f.userelement2_id,
    f.a_asset_id,
    f.description,
    o.value AS orgvalue,
    o.name AS orgname,
    ev.value AS accountvalue,
    ev.name,
    ev.accounttype,
    bp.value AS bpartnervalue,
    bp.name AS bpname,
    bp.c_bp_group_id,
    p.value AS productvalue,
    p.name AS productname,
    p.upc,
    p.m_product_category_id
   FROM fact_acct f
     JOIN ad_org o ON f.ad_org_id = o.ad_org_id
JOIN celmval ev ON f.account_id = ev.c_elementvalue_id
JOIN celmvalt ev ON f.account_id = ev.c_elementvalue_id
     LEFT JOIN c_bpartner bp ON f.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN m_product p ON f.m_product_id = p.m_product_id;

