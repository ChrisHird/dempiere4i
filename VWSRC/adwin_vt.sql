-- View: ad_window_vt

-- DROP VIEW ad_window_vt;

 SELECT trl.ad_language,
    bt.ad_window_id,
    trl.name,
    trl.description,
    trl.help,
    bt.windowtype,
    bt.ad_color_id,
    bt.ad_image_id,
    bt.isactive,
    bt.winwidth,
    bt.winheight,
    bt.issotrx
   FROM ad_window bt
JOIN adwint trl ON bt.ad_window_id = trl.ad_window_id
  WHERE bt.isactive = 'Y';

