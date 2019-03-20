-- View: rv_asset_delivery

-- DROP VIEW rv_asset_delivery;

 SELECT ad.a_asset_delivery_id,
    ad.ad_client_id,
    ad.ad_org_id,
    ad.isactive,
    ad.created,
    ad.createdby,
    ad.updated,
    ad.updatedby,
    a.a_asset_id,
    a.a_asset_group_id,
    a.m_product_id,
    a.guaranteedate,
    a.assetservicedate,
    a.c_bpartner_id,
    ad.ad_user_id,
    ad.movementdate,
    ad.serno,
    ad.lot,
    ad.versionno,
    ad.m_inoutline_id,
    ad.email,
    ad.messageid,
    ad.deliveryconfirmation,
    ad.url,
    ad.remote_addr,
    ad.remote_host,
    ad.referrer,
    ad.description
FROM aasstdel ad
     JOIN a_asset a ON a.a_asset_id = ad.a_asset_id;

