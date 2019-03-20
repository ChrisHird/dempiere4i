-- View: rv_fact_acct_period

-- DROP VIEW rv_fact_acct_period;

 SELECT fact_acct.ad_client_id,
    fact_acct.ad_org_id,
    fact_acct.c_acctschema_id,
    fact_acct.account_id,
    fact_acct.c_period_id,
    fact_acct.gl_category_id,
    fact_acct.gl_budget_id,
    fact_acct.c_tax_id,
    fact_acct.m_locator_id,
    fact_acct.postingtype,
    fact_acct.c_currency_id,
    sum(fact_acct.amtsourcedr) AS amtsourcedr,
    sum(fact_acct.amtsourcecr) AS amtsourcecr,
    sum(fact_acct.amtsourcedr - fact_acct.amtsourcecr) AS amtsource,
    sum(fact_acct.amtacctdr) AS amtacctdr,
    sum(fact_acct.amtacctcr) AS amtacctcr,
    sum(fact_acct.amtacctdr - fact_acct.amtacctcr) AS amtacct,
        CASE
            WHEN sum(fact_acct.amtsourcedr - fact_acct.amtsourcecr) = 0 THEN 0
            ELSE sum(fact_acct.amtacctdr - fact_acct.amtacctcr) / sum(fact_acct.amtsourcedr - fact_acct.amtsourcecr)
        END AS rate,
    fact_acct.m_product_id,
    fact_acct.c_bpartner_id,
    fact_acct.ad_orgtrx_id,
    fact_acct.c_locfrom_id,
    fact_acct.c_locto_id,
    fact_acct.c_salesregion_id,
    fact_acct.c_project_id,
    fact_acct.c_campaign_id,
    fact_acct.c_activity_id,
    fact_acct.user1_id,
    fact_acct.user2_id,
    fact_acct.user3_id,
    fact_acct.user4_id,
    fact_acct.a_asset_id
   FROM fact_acct
  GROUP BY fact_acct.ad_client_id, fact_acct.ad_org_id, fact_acct.c_acctschema_id, fact_acct.account_id,
  fact_acct.c_period_id, fact_acct.gl_category_id, fact_acct.gl_budget_id, fact_acct.c_tax_id, 
  fact_acct.m_locator_id, fact_acct.postingtype, fact_acct.c_currency_id, fact_acct.m_product_id,
  fact_acct.c_bpartner_id, fact_acct.ad_orgtrx_id, fact_acct.c_locfrom_id, fact_acct.c_locto_id, 
  fact_acct.c_salesregion_id, fact_acct.c_project_id, fact_acct.c_campaign_id, fact_acct.c_activity_id,
  fact_acct.user1_id, fact_acct.user2_id, fact_acct.user3_id, fact_acct.user4_id, fact_acct.a_asset_id;

