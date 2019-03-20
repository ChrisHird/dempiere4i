-- View: c_rfqresponselineqty_vt

-- DROP VIEW c_rfqresponselineqty_vt;

 SELECT rq.c_rfqresponseline_id,
    rq.c_rfqresponselineqty_id,
    rq.c_rfqlineqty_id,
    rq.ad_client_id,
    rq.ad_org_id,
    rq.isactive,
    rq.created,
    rq.createdby,
    rq.updated,
    rq.updatedby,
    l.ad_language,
    q.c_uom_id,
    uom.uomsymbol,
    q.qty,
    rq.price,
    rq.discount
FROM crfqrlnq rq
JOIN crfqlq q ON rq.c_rfqlineqty_id = q.c_rfqlineqty_id
     JOIN c_uom uom ON q.c_uom_id = uom.c_uom_id
JOIN adlng l ON l.issystemlanguage = 'Y'
  WHERE rq.isactive = 'Y' AND q.isactive = 'Y';

