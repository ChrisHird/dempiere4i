-- View: rv_requestupdates_only

-- DROP VIEW rv_requestupdates_only;

 SELECT min(rv_requestupdates.ad_client_id) AS ad_client_id,
    min(rv_requestupdates.ad_org_id) AS ad_org_id,
    'Y'::character(1) AS isactive,
    getdate() AS created,
    0 AS createdby,
    getdate() AS updated,
    0 AS updatedby,
    rv_requestupdates.r_request_id,
    rv_requestupdates.ad_user_id
  WHERE rv_requestupdates.isactive = 'Y'
  GROUP BY rv_requestupdates.r_request_id, rv_requestupdates.ad_user_id;

