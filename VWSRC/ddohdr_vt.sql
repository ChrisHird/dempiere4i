﻿-- View: dd_order_header_vt

-- DROP VIEW dd_order_header_vt;

 SELECT o.ad_client_id,
    o.ad_org_id,
    o.isactive,
    o.created,
    o.createdby,
    o.updated,
    o.updatedby,
    dt.ad_language,
    o.dd_order_id,
    o.c_order_id,
    o.issotrx,
    o.documentno,
    o.docstatus,
    o.c_doctype_id,
    o.c_bpartner_id,
    bp.value AS bpvalue,
    bp.taxid AS bptaxid,
    bp.naics,
    bp.duns,
    oi.c_location_id AS org_location_id,
    oi.taxid,
    o.m_warehouse_id,
    wh.c_location_id AS warehouse_location_id,
    dt.printname AS documenttype,
    dt.documentnote AS documenttypenote,
    o.salesrep_id,
    COALESCE(ubp.name, u.name) AS salesrep_name,
    o.dateordered,
    o.datepromised,
    bpg.greeting AS bpgreeting,
    bp.name,
    bp.name2,
    bpcg.greeting AS bpcontactgreeting,
    bpc.title,
    bpc.phone,
    NULLIF(bpc.name, bp.name) AS contactname,
    bpl.c_location_id,
    l.postal || l.postal_add AS postal,
    bp.referenceno,
    o.description,
    o.poreference,
    o.c_charge_id,
    o.chargeamt,
    o.volume,
    o.weight,
    o.c_campaign_id,
    o.c_project_id,
    o.c_activity_id,
    o.m_shipper_id,
    o.deliveryrule,
    o.deliveryviarule,
    o.priorityrule,
    COALESCE(oi.logo_id, ci.logo_id) AS logo_id
   FROM dd_order o
JOIN cdtypt dt ON o.c_doctype_id = dt.c_doctype_id
JOIN mwhse wh ON o.m_warehouse_id = wh.m_warehouse_id
JOIN mwhsea wh ON o.m_warehouse_id = wh.m_warehouse_id
     JOIN c_bpartner bp ON o.c_bpartner_id = bp.c_bpartner_id
JOIN cgtgt bpg ON bp.c_greeting_id = bpg.c_greeting_id AND dt.ad_language = bpg.ad_language
JOIN cbploc bpl ON o.c_bpartner_location_id = bpl.c_bpartner_location_id
     JOIN c_location l ON bpl.c_location_id = l.c_location_id
     LEFT JOIN ad_user bpc ON o.ad_user_id = bpc.ad_user_id
JOIN cgtgt bpcg ON bpc.c_greeting_id = bpcg.c_greeting_id AND dt.ad_language = bpcg.ad_language
     JOIN ad_orginfo oi ON o.ad_org_id = oi.ad_org_id
JOIN adclntinf ci ON o.ad_client_id = ci.ad_client_id
     LEFT JOIN ad_user u ON o.salesrep_id = u.ad_user_id
     LEFT JOIN c_bpartner ubp ON u.c_bpartner_id = ubp.c_bpartner_id;

