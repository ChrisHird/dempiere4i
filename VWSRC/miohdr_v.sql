-- View: m_inout_header_v

-- DROP VIEW m_inout_header_v;

 SELECT io.ad_client_id,
    io.ad_org_id,
    io.isactive,
    io.created,
    io.createdby,
    io.updated,
    io.updatedby,
    'en_US' AS ad_language,
    io.m_inout_id,
    io.issotrx,
    io.documentno,
    io.docstatus,
    io.c_doctype_id,
    io.c_bpartner_id,
    bp.value AS bpvalue,
    bp.taxid AS bptaxid,
    bp.naics,
    bp.duns,
    oi.c_location_id AS org_location_id,
    oi.taxid,
    io.m_warehouse_id,
    wh.c_location_id AS warehouse_location_id,
    dt.printname AS documenttype,
    dt.documentnote AS documenttypenote,
    io.c_order_id,
    io.movementdate,
    io.movementtype,
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
    io.description,
    io.poreference,
    io.dateordered,
    io.volume,
    io.weight,
    io.m_shipper_id,
    io.deliveryrule,
    io.deliveryviarule,
    io.priorityrule,
    COALESCE(oi.logo_id, ci.logo_id) AS logo_id
   FROM m_inout io
     JOIN c_doctype dt ON io.c_doctype_id = dt.c_doctype_id
     JOIN c_bpartner bp ON io.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN c_greeting bpg ON bp.c_greeting_id = bpg.c_greeting_id
JOIN cbploc bpl ON io.c_bpartner_location_id = bpl.c_bpartner_location_id
     JOIN c_location l ON bpl.c_location_id = l.c_location_id
     LEFT JOIN ad_user bpc ON io.ad_user_id = bpc.ad_user_id
     LEFT JOIN c_greeting bpcg ON bpc.c_greeting_id = bpcg.c_greeting_id
     JOIN ad_orginfo oi ON io.ad_org_id = oi.ad_org_id
JOIN adclntinf ci ON io.ad_client_id = ci.ad_client_id
JOIN mwhse wh ON io.m_warehouse_id = wh.m_warehouse_id;
JOIN mwhsea wh ON io.m_warehouse_id = wh.m_warehouse_id;

