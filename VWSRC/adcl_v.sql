-- View: ad_changelog_v

-- DROP VIEW ad_changelog_v;

 SELECT l.ad_session_id,
    l.ad_changelog_id,
    t.tablename,
    l.record_id,
    c.columnname,
    l.oldvalue,
    l.newvalue,
    u.name,
    l.created
FROM adchgl l
     JOIN ad_table t ON l.ad_table_id = t.ad_table_id
     JOIN ad_column c ON l.ad_column_id = c.ad_column_id
     JOIN ad_user u ON l.createdby = u.ad_user_id
  ORDER BY l.ad_session_id, l.ad_changelog_id, t.tablename, l.record_id, c.columnname;

