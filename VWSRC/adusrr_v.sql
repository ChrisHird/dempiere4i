-- View: ad_user_roles_v

-- DROP VIEW ad_user_roles_v;

 SELECT u.name,
    r.name AS rolename
FROM adusrr ur
     JOIN ad_user u ON ur.ad_user_id = u.ad_user_id
     JOIN ad_role r ON ur.ad_role_id = r.ad_role_id;

