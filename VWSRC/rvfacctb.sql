-- View: rv_fact_acct_balance

-- DROP VIEW rv_fact_acct_balance;

 SELECT a.ad_client_id,
    a.ad_org_id,
    a.c_acctschema_id,
    trunc(a.dateacct) AS dateacct,
    a.account_id,
    a.postingtype,
    a.m_product_id,
    a.c_bpartner_id,
    a.c_project_id,
    a.ad_orgtrx_id,
    a.c_salesregion_id,
    a.c_activity_id,
    a.c_campaign_id,
    a.c_locto_id,
    a.c_locfrom_id,
    a.user1_id,
    a.user2_id,
    a.user3_id,
    a.user4_id,
    a.gl_budget_id,
    COALESCE(sum(a.amtacctdr), 0) AS amtacctdr,
    COALESCE(sum(a.amtacctcr), 0) AS amtacctcr,
    COALESCE(sum(a.qty), 0) AS qty,
    max(a.createdby) AS createdby,
    max(a.created) AS created,
    max(a.updatedby) AS updatedby,
    max(a.updated) AS updated,
    max(a.isactive) AS isactive,
    max(a.c_subacct_id) AS c_subacct_id,
    a.userelement1_id,
    a.userelement2_id,
    max(a.c_projectphase_id) AS c_projectphase_id,
    max(a.c_projecttask_id) AS c_projecttask_id
   FROM fact_acct a
  GROUP BY a.ad_client_id, a.ad_org_id, a.c_acctschema_id, (trunc(a.dateacct)), a.account_id,
  a.postingtype, a.m_product_id, a.c_bpartner_id, a.c_project_id, a.ad_orgtrx_id, a.c_salesregion_id, 
  a.c_activity_id, a.c_campaign_id, a.c_locto_id, a.c_locfrom_id, a.user1_id, a.user2_id, a.user3_id,
  a.user4_id, a.userelement1_id, a.userelement2_id, a.gl_budget_id;

