-- View: c_rfqresponseline_vt

-- DROP VIEW c_rfqresponseline_vt;

 SELECT rrl.c_rfqresponse_id,
    rrl.c_rfqresponseline_id,
    rrl.c_rfqline_id,
    rq.c_rfqresponselineqty_id,
    rq.c_rfqlineqty_id,
    rrl.ad_client_id,
    rrl.ad_org_id,
    rrl.isactive,
    rrl.created,
    rrl.createdby,
    rrl.updated,
    rrl.updatedby,
    l.ad_language,
    rl.line,
    rl.m_product_id,
    rl.m_attributesetinstance_id,
    COALESCE(p.name || productattribute(rl.m_attributesetinstance_id), rl.description) AS name,
        CASE
            WHEN p.name IS NOT NULL THEN rl.description
            ELSE NULL
        END AS description,
    p.documentnote,
    p.upc,
    p.sku,
    p.value AS productvalue,
    rl.help,
    rl.dateworkstart,
    rl.deliverydays,
    q.c_uom_id,
    uom.uomsymbol,
    q.qty,
    rq.price,
    rq.discount
FROM crfqrlnq rq
JOIN crfqlq q ON rq.c_rfqlineqty_id = q.c_rfqlineqty_id
     JOIN c_uom uom ON q.c_uom_id = uom.c_uom_id
JOIN crfqrln rrl ON rq.c_rfqresponseline_id = rrl.c_rfqresponseline_id
JOIN crfqrlnq rrl ON rq.c_rfqresponseline_id = rrl.c_rfqresponseline_id
     JOIN c_rfqline rl ON rrl.c_rfqline_id = rl.c_rfqline_id
     LEFT JOIN m_product p ON rl.m_product_id = p.m_product_id
JOIN adlng l ON l.issystemlanguage = 'Y'
  WHERE rq.isactive = 'Y' AND q.isactive = 'Y' AND rrl.isactive = 'Y' AND rl.isactive = 'Y';

