-- View: rv_click_month

-- DROP VIEW rv_click_month;

 SELECT cc.ad_client_id,
    cc.ad_org_id,
    cc.name,
    cc.description,
    cc.targeturl,
    cc.c_bpartner_id,
    firstof(c.created, 'MM') AS created,
    count(*) AS counter
FROM wclkcnt cc
     JOIN w_click c ON cc.w_clickcount_id = c.w_clickcount_id
  WHERE cc.isactive = 'Y'
  GROUP BY cc.ad_client_id, cc.ad_org_id, cc.name, cc.description, cc.targeturl, cc.c_bpartner_id, 
  (firstof(c.created, 'MM'));

