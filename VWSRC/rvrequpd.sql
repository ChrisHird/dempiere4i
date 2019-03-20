-- View: rv_requestupdates

-- DROP VIEW rv_requestupdates;

 SELECT r_requestupdates.ad_client_id,
    r_requestupdates.ad_org_id,
    r_requestupdates.isactive,
    r_requestupdates.created,
    r_requestupdates.createdby,
    r_requestupdates.updated,
    r_requestupdates.updatedby,
    r_requestupdates.r_request_id,
    r_requestupdates.ad_user_id,
    r_requestupdates.isselfservice,
    NULL AS r_group_id,
    NULL AS r_requesttype_id,
    NULL AS r_category_id
UNION
 SELECT u.ad_client_id,
    u.ad_org_id,
    u.isactive,
    u.created,
    u.createdby,
    u.updated,
    u.updatedby,
    r.r_request_id,
    u.ad_user_id,
    u.isselfservice,
    r.r_group_id,
    NULL AS r_requesttype_id,
    NULL AS r_category_id
FROM rgrpupd u
     JOIN r_request r ON u.r_group_id = r.r_group_id
UNION
 SELECT u.ad_client_id,
    u.ad_org_id,
    u.isactive,
    u.created,
    u.createdby,
    u.updated,
    u.updatedby,
    r.r_request_id,
    u.ad_user_id,
    u.isselfservice,
    NULL AS r_group_id,
    r.r_requesttype_id,
    NULL AS r_category_id
FROM rreqtypud u
     JOIN r_request r ON u.r_requesttype_id = r.r_requesttype_id
UNION
 SELECT u.ad_client_id,
    u.ad_org_id,
    u.isactive,
    u.created,
    u.createdby,
    u.updated,
    u.updatedby,
    r.r_request_id,
    u.ad_user_id,
    u.isselfservice,
    NULL AS r_group_id,
    NULL AS r_requesttype_id,
    r.r_category_id
FROM rcatupd u
     JOIN r_request r ON u.r_category_id = r.r_category_id
UNION
 SELECT r_request.ad_client_id,
    r_request.ad_org_id,
    r_request.isactive,
    r_request.created,
    r_request.createdby,
    r_request.updated,
    r_request.updatedby,
    r_request.r_request_id,
    r_request.ad_user_id,
    r_request.isselfservice,
    NULL AS r_group_id,
    NULL AS r_requesttype_id,
    NULL AS r_category_id
   FROM r_request
  WHERE r_request.ad_user_id IS NOT NULL
UNION
 SELECT u.ad_client_id,
    u.ad_org_id,
    u.isactive,
    u.created,
    u.createdby,
    u.updated,
    u.updatedby,
    r.r_request_id,
    u.ad_user_id,
    NULL AS isselfservice,
    NULL AS r_group_id,
    NULL AS r_requesttype_id,
    r.r_category_id
   FROM ad_user u
     JOIN r_request r ON u.ad_user_id = r.salesrep_id
UNION
 SELECT r.ad_client_id,
    r.ad_org_id,
    u.isactive,
    r.created,
    r.createdby,
    r.updated,
    r.updatedby,
    r.r_request_id,
    u.ad_user_id,
    NULL AS isselfservice,
    NULL AS r_group_id,
    NULL AS r_requesttype_id,
    NULL AS r_category_id
   FROM r_request r
JOIN adusrr u ON u.ad_role_id = r.ad_role_id;

