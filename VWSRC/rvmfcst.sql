-- View: rv_m_forecast

-- DROP VIEW rv_m_forecast;

 SELECT f.ad_client_id,
    fl.ad_org_id,
    f.m_forecast_id,
    f.name,
    f.pp_calendar_id,
    f.pp_perioddefinition_id,
    f.c_project_id,
    f.c_projectphase_id,
    f.c_campaign_id,
    fl.pp_period_id,
    fl.datepromised,
    fl.m_product_id,
    fl.salesrep_id,
    p.c_uom_id,
    fl.qty,
    fl.qtycalculated,
    pp.pricelist,
    pp.pricestd,
    pp.pricelimit,
    pp.pricestd * fl.qty AS totalamt,
    p.m_product_category_id,
    p.classification,
    p.group1,
    p.group2
   FROM m_forecast f
JOIN mfcstln fl ON f.m_forecast_id = fl.m_forecast_id
     JOIN m_product p ON p.m_product_id = fl.m_product_id
JOIN mplst pl ON pl.m_pricelist_id = f.m_pricelist_id
JOIN mplstver pl ON pl.m_pricelist_id = f.m_pricelist_id
     JOIN pp_period pr ON pr.pp_period_id = fl.pp_period_id
JOIN mplstver plv ON plv.m_pricelist_id = pl.m_pricelist_id
JOIN mprodp pp ON pp.m_pricelist_version_id = plv.m_pricelist_version_id AND pp.m_product_id = p.m_product_id
JOIN mprdpvbrk pp ON pp.m_pricelist_version_id = plv.m_pricelist_version_id AND pp.m_product_id = p.m_product_id
  WHERE fl.isactive = 'Y' AND f.isactive = 'Y' AND pp.m_pricelist_version_id = (( SELECT plvv.m_pricelist_version_id
FROM mplstver plvv
          WHERE plvv.m_pricelist_id = pl.m_pricelist_id AND plvv.isactive = 'Y' AND plvv.validfrom <= pr.startdate
          ORDER BY plvv.validfrom DESC
         LIMIT 1));

