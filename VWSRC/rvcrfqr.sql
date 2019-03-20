-- View: rv_c_rfqresponse

-- DROP VIEW rv_c_rfqresponse;

 SELECT q.ad_client_id,
    q.ad_org_id,
    q.c_rfq_id,
    q.c_rfq_topic_id,
    r.c_bpartner_id,
    r.c_bpartner_location_id,
    r.ad_user_id,
    r.c_rfqresponse_id,
    r.c_currency_id,
    r.dateresponse,
    r.dateworkstart,
    r.deliverydays,
    r.dateworkcomplete,
    r.price,
    r.ranking,
    r.isselfservice,
    r.description,
    r.help,
    ql.m_product_id,
    ql.m_attributesetinstance_id,
    ql.line,
    rl.dateworkstart AS linedateworkstart,
    rl.deliverydays AS linedeliverydays,
    rl.dateworkcomplete AS linedateworkcomplete,
    rl.description AS linedescription,
    rl.help AS linehelp,
    qlq.c_uom_id,
    qlq.qty,
    qlq.benchmarkprice,
    rlq.price - qlq.benchmarkprice AS benchmarkdifference,
    rlq.price AS qtyprice,
    rlq.discount,
    rlq.ranking AS qtyranking
   FROM c_rfq q
     JOIN c_rfqline ql ON q.c_rfq_id = ql.c_rfq_id
JOIN crfqlq qlq ON ql.c_rfqline_id = qlq.c_rfqline_id
JOIN crfqr r ON q.c_rfq_id = r.c_rfq_id
JOIN crfqrln r ON q.c_rfq_id = r.c_rfq_id
JOIN crfqrlnq r ON q.c_rfq_id = r.c_rfq_id
JOIN crfqrln rl ON r.c_rfqresponse_id = rl.c_rfqresponse_id AND ql.c_rfqline_id = rl.c_rfqline_id
JOIN crfqrlnq rl ON r.c_rfqresponse_id = rl.c_rfqresponse_id AND ql.c_rfqline_id = rl.c_rfqline_id
JOIN crfqrlnq rlq ON rl.c_rfqresponseline_id = rlq.c_rfqresponseline_id AND qlq.c_rfqlineqty_id = rlq.c_rfqlineqty_id
  WHERE r.iscomplete = 'Y' AND q.processed = 'N';

