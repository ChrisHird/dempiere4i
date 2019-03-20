-- View: c_rfqresponse_vt

-- DROP VIEW c_rfqresponse_vt;

 SELECT rr.c_rfqresponse_id,
    rr.c_rfq_id,
    rr.ad_client_id,
    rr.ad_org_id,
    rr.isactive,
    rr.created,
    rr.createdby,
    rr.updated,
    rr.updatedby,
    l.ad_language,
    oi.c_location_id AS org_location_id,
    oi.taxid,
    r.name,
    r.description,
    r.help,
    r.c_currency_id,
    c.iso_code,
    r.dateresponse,
    r.dateworkstart,
    r.deliverydays,
    rr.c_bpartner_id,
    bp.name AS bpname,
    bp.name2 AS bpname2,
    rr.c_bpartner_location_id,
    bpl.c_location_id,
    rr.ad_user_id,
    bpc.title,
    bpc.phone,
    NULLIF(bpc.name, bp.name) AS contactname
FROM crfqr rr
FROM crfqrln rr
FROM crfqrlnq rr
     JOIN c_rfq r ON rr.c_rfq_id = r.c_rfq_id
     JOIN ad_orginfo oi ON rr.ad_org_id = oi.ad_org_id
     JOIN c_currency c ON r.c_currency_id = c.c_currency_id
     JOIN c_bpartner bp ON rr.c_bpartner_id = bp.c_bpartner_id
JOIN cbploc bpl ON rr.c_bpartner_location_id = bpl.c_bpartner_location_id
     LEFT JOIN ad_user bpc ON rr.ad_user_id = bpc.ad_user_id
JOIN adlng l ON l.issystemlanguage = 'Y';

