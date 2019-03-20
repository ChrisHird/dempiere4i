﻿-- View: rv_c_invoice

-- DROP VIEW rv_c_invoice;

 SELECT i.c_invoice_id,
    i.ad_client_id,
    i.ad_org_id,
    i.isactive,
    i.created,
    i.createdby,
    i.updated,
    i.updatedby,
    i.issotrx,
    i.documentno,
    i.docstatus,
    i.docaction,
    i.isprinted,
    i.isdiscountprinted,
    i.processing,
    i.processed,
    i.istransferred,
    i.ispaid,
    i.c_doctype_id,
    i.c_doctypetarget_id,
    i.c_order_id,
    i.description,
    i.isapproved,
    i.salesrep_id,
    i.dateinvoiced,
    i.dateprinted,
    i.dateacct,
    i.c_bpartner_id,
    i.c_bpartner_location_id,
    i.ad_user_id,
    b.c_bp_group_id,
    i.poreference,
    i.dateordered,
    i.c_currency_id,
    i.c_conversiontype_id,
    i.paymentrule,
    i.c_paymentterm_id,
    i.m_pricelist_id,
    i.c_campaign_id,
    i.c_project_id,
    i.c_activity_id,
    i.ispayschedulevalid,
    i.invoicecollectiontype,
    loc.c_country_id,
    loc.c_region_id,
    loc.postal,
    loc.city,
    i.c_charge_id,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN i.chargeamt * '-1'
            ELSE i.chargeamt
        END AS chargeamt,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN i.totallines * '-1'
            ELSE i.totallines
        END AS totallines,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN i.grandtotal * '-1'
            ELSE i.grandtotal
        END AS grandtotal,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN '-1'
            ELSE 1
        END AS multiplier
   FROM c_invoice i
     JOIN c_doctype d ON i.c_doctype_id = d.c_doctype_id
     JOIN c_bpartner b ON i.c_bpartner_id = b.c_bpartner_id
JOIN cbploc bpl ON i.c_bpartner_location_id = bpl.c_bpartner_location_id
     JOIN c_location loc ON bpl.c_location_id = loc.c_location_id;

