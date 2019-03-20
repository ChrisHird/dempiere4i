﻿-- View: ad_tab_vt

-- DROP VIEW ad_tab_vt;

CREATE OR REPLACE VIEW ad_tab_vt AS 
 SELECT trl.ad_language,
    t.ad_tab_id,
    t.ad_window_id,
    t.ad_table_id,
    trl.name,
    trl.description,
    trl.help,
    t.seqno,
    t.issinglerow,
    t.hastree,
    t.isinfotab,
    tbl.replicationtype,
    tbl.tablename,
    tbl.accesslevel,
    tbl.issecurityenabled,
    tbl.isdeleteable,
    tbl.ishighvolume,
    tbl.isview,
    'N'::character(1) AS hasassociation,
    t.istranslationtab,
    t.isreadonly,
    t.ad_image_id,
    t.tablevel,
    t.whereclause,
    t.orderbyclause,
    trl.commitwarning,
    t.readonlylogic,
    t.displaylogic,
    t.ad_column_id,
    t.ad_process_id,
    t.issorttab,
    t.isinsertrecord,
    t.isadvancedtab,
    t.ad_columnsortorder_id,
    t.ad_columnsortyesno_id,
    t.included_tab_id,
    t.parent_column_id
   FROM ad_tab t
     JOIN ad_table tbl ON t.ad_table_id = tbl.ad_table_id
     JOIN ad_tab_trl trl ON t.ad_tab_id = trl.ad_tab_id
  WHERE t.isactive = 'Y' AND tbl.isactive = 'Y';

