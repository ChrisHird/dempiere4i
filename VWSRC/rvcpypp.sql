-- View: rv_copyprocess_para

-- DROP VIEW rv_copyprocess_para;

 SELECT c.ad_client_id,
    c.ad_org_id,
    c.created,
    c.createdby,
    c.updated,
    c.updatedby,
    c.isactive,
    c.ad_element_id,
    c.columnname,
    c.ad_reference_id,
    c.ismandatory,
    'N' AS isrange,
    c.defaultvalue,
    NULL AS defaultvalue2,
    rv.ad_reportview_id,
    'N' AS copyfromprocess,
    NULL AS ad_process_id,
    NULL AS ad_process_para_id,
    c.ad_column_id
FROM adrptvw rv
FROM adrptvwc rv
FROM adrptvt rv
     JOIN ad_table t ON t.ad_table_id = rv.ad_table_id
     JOIN ad_column c ON c.ad_table_id = t.ad_table_id
UNION ALL
 SELECT pp.ad_client_id,
    pp.ad_org_id,
    pp.created,
    pp.createdby,
    pp.updated,
    pp.updatedby,
    pp.isactive,
    pp.ad_element_id,
    pp.columnname,
    pp.ad_reference_id,
    pp.ismandatory,
    'N' AS isrange,
    pp.defaultvalue,
    pp.defaultvalue2,
    NULL AS ad_reportview_id,
    'Y' AS copyfromprocess,
    p.ad_process_id,
    pp.ad_process_para_id,
    NULL AS ad_column_id
   FROM ad_process p
JOIN adprcp pp ON pp.ad_process_id = p.ad_process_id;
JOIN adprcpt pp ON pp.ad_process_id = p.ad_process_id;

