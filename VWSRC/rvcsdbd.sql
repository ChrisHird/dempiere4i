-- View: rv_c_salesdashboard

-- DROP VIEW rv_c_salesdashboard;

 SELECT ad_user.ad_client_id,
    ad_user.ad_org_id,
    ad_user.created,
    ad_user.createdby,
    ad_user.updated,
    ad_user.updatedby,
    ad_user.isactive,
    ad_user.ad_user_id,
    ad_user.name,
    0 AS salespipeline
   FROM ad_user;

