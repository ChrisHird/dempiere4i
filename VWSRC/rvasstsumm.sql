-- View: rv_asset_summonth

-- DROP VIEW rv_asset_summonth;

 SELECT a.ad_client_id,
    a.ad_org_id,
    a.isactive,
    a.created,
    a.createdby,
    a.updated,
    a.updatedby,
    a.a_asset_id,
    a.a_asset_group_id,
    a.m_product_id,
    a.value,
    a.name,
    a.description,
    a.help,
    a.guaranteedate,
    a.assetservicedate,
    a.c_bpartner_id,
    a.ad_user_id,
    a.serno,
    a.lot,
    a.versionno,
    firstof(ad.movementdate, 'MM') AS movementdate,
    count(*) AS deliverycount
   FROM a_asset a
JOIN aasstdel ad ON a.a_asset_id = ad.a_asset_id
  GROUP BY a.ad_client_id, a.ad_org_id, a.isactive, a.created, a.createdby, a.updated, a.updatedby,
  a.a_asset_id, a.a_asset_group_id, a.m_product_id, a.value, a.name, a.description, a.help, a.guaranteedate,
  a.assetservicedate, a.c_bpartner_id, a.ad_user_id, a.serno, a.lot, a.versionno, 
  (firstof(ad.movementdate, 'MM'));

