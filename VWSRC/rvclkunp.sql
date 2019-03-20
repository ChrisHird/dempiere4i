-- View: rv_click_unprocessed

-- DROP VIEW rv_click_unprocessed;

 SELECT w_click.w_click_id,
    w_click.ad_client_id,
    w_click.ad_org_id,
    w_click.isactive,
    w_click.created,
    w_click.createdby,
    w_click.updated,
    w_click.updatedby,
    w_click.targeturl,
    w_click.referrer,
    w_click.remote_host,
    w_click.remote_addr,
    w_click.useragent,
    w_click.acceptlanguage,
    w_click.processed,
    w_click.w_clickcount_id,
    w_click.ad_user_id,
    w_click.email
   FROM w_click
  WHERE w_click.w_clickcount_id IS NULL OR w_click.processed = 'N';

