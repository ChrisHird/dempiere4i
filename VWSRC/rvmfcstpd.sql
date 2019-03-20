-- View: rv_m_forecast_period

-- DROP VIEW rv_m_forecast_period;

 SELECT f.ad_client_id,
    f.ad_org_id,
    f.m_forecast_id,
    max(f.name) AS name,
    f.pp_calendar_id,
    f.pp_perioddefinition_id,
    f.pp_period_id,
    f.c_project_id,
    f.c_projectphase_id,
    f.c_campaign_id,
    f.m_product_id,
    f.c_uom_id,
    sum(f.qty) AS qty,
    sum(f.qtycalculated) AS qtycalculated,
    sum(f.totalamt) AS totalamt
  GROUP BY f.ad_client_id, f.ad_org_id, f.m_forecast_id, f.m_product_id, f.c_uom_id, f.pp_calendar_id,
  f.pp_perioddefinition_id, f.pp_period_id, f.c_project_id, f.c_projectphase_id, f.c_campaign_id;

