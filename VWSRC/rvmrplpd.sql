-- View: rv_m_replenishplan_production

-- DROP VIEW rv_m_replenishplan_production;

 SELECT mrl.ad_client_id,
    mrl.ad_org_id,
    mrl.m_replenishplan_id,
    p.m_product_id,
    pd.m_production_id,
    pd.productionqty,
    pd.datepromised,
    pd.movementdate,
    pd.isactive,
    p.m_product_category_id,
    trunc(c.currentcostprice, 6) AS currentcostprice,
    trunc(c.currentcostprice, 6) * pd.productionqty AS currentcostvalue
FROM mrplplnln mrl
JOIN mpdn pd ON pd.m_production_id = mrl.m_production_id
JOIN mprdbtch pd ON pd.m_production_id = mrl.m_production_id
JOIN mprdbtcln pd ON pd.m_production_id = mrl.m_production_id
JOIN mpdnln pd ON pd.m_production_id = mrl.m_production_id
JOIN mprdlnma pd ON pd.m_production_id = mrl.m_production_id
JOIN mpdnpln pd ON pd.m_production_id = mrl.m_production_id
     JOIN m_product p ON p.m_product_id = pd.m_product_id
     LEFT JOIN m_cost c ON c.m_product_id = p.m_product_id
  WHERE mrl.recordtype = 'Planned Production' AND c.m_costelement_id = (( SELECT m_costelement.m_costelement_id
          WHERE m_costelement.ad_client_id = p.ad_client_id AND m_costelement.costingmethod = 'S' AND
		  m_costelement.costelementtype = 'M'))
  ORDER BY pd.m_production_id;

