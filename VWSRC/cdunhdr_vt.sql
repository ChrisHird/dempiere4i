-- View: c_dunning_header_vt

-- DROP VIEW c_dunning_header_vt;

 SELECT dr.ad_client_id,
    dr.ad_org_id,
    dr.isactive,
    dr.created,
    dr.createdby,
    dr.updated,
    dr.updatedby,
    dlt.ad_language,
    dr.c_dunningrun_id,
    dre.c_dunningrunentry_id,
    dr.dunningdate,
    dlt.printname,
    dlt.note AS documentnote,
    dre.c_bpartner_id,
    bp.value AS bpvalue,
    bp.taxid AS bptaxid,
    bp.naics,
    bp.duns,
    oi.c_location_id AS org_location_id,
    oi.taxid,
    dre.salesrep_id,
    COALESCE(ubp.name, u.name) AS salesrep_name,
    bpg.greeting AS bpgreeting,
    bp.name,
    bp.name2,
    bpcg.greeting AS bpcontactgreeting,
    bpc.title,
    bpc.phone,
    NULLIF(bpc.name, bp.name) AS contactname,
    bpl.c_location_id,
    bp.referenceno,
    l.postal || l.postal_add AS postal,
    dre.amt,
    dre.qty,
    dre.note,
    COALESCE(oi.logo_id, ci.logo_id) AS logo_id
FROM cdunr dr
FROM cdunrent dr
FROM cdunrln dr
JOIN cdunrent dre ON dr.c_dunningrun_id = dre.c_dunningrun_id
JOIN cdunlvl dl ON dre.c_dunninglevel_id = dl.c_dunninglevel_id
JOIN cdunlvlt dl ON dre.c_dunninglevel_id = dl.c_dunninglevel_id
JOIN cdunlvlt dlt ON dl.c_dunninglevel_id = dlt.c_dunninglevel_id
     JOIN c_bpartner bp ON dre.c_bpartner_id = bp.c_bpartner_id
JOIN cgtgt bpg ON bp.c_greeting_id = bpg.c_greeting_id AND dlt.ad_language = bpg.ad_language
JOIN cbploc bpl ON dre.c_bpartner_location_id = bpl.c_bpartner_location_id
     JOIN c_location l ON bpl.c_location_id = l.c_location_id
     LEFT JOIN ad_user bpc ON dre.ad_user_id = bpc.ad_user_id
JOIN cgtgt bpcg ON bpc.c_greeting_id = bpcg.c_greeting_id AND dlt.ad_language = bpcg.ad_language
     JOIN ad_orginfo oi ON dr.ad_org_id = oi.ad_org_id
JOIN adclntinf ci ON dr.ad_client_id = ci.ad_client_id
     LEFT JOIN ad_user u ON dre.salesrep_id = u.ad_user_id
     LEFT JOIN c_bpartner ubp ON u.c_bpartner_id = ubp.c_bpartner_id;

