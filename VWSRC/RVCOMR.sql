-- View: rv_commissionrun

-- DROP VIEW rv_commissionrun;

 SELECT cr.ad_client_id,
    cr.ad_org_id,
    cr.isactive,
    cr.c_commissionrun_id,
    cr.created,
    cr.updated,
    cr.createdby,
    cr.updatedby,
    cr.datedoc,
    cr.startdate,
    cr.enddate,
    cr.grandtotal,
    ca.c_commissionamt_id,
    ca.c_bpartner_id AS commission_bpartner_id,
    ca.convertedamt,
    ca.actualqty,
    ca.commissionamt,
    cl.qtymultiplier,
    cl.c_bpartner_id,
    cl.m_product_id,
    cl.qtysubtract,
    cl.org_id,
    cl.c_commission_id,
    cl.c_bp_group_id,
    cl.line,
    cl.amtsubtract,
    cl.c_salesregion_id,
    cl.c_commissionline_id,
    cl.commissionorders,
    cl.amtmultiplier,
    cl.m_product_category_id,
    cl.ispositiveonly,
    cl.paymentrule,
    cl.daysfrom,
    cl.daysto,
    cl.c_channel_id,
    cl.invoicecollectiontype,
    cl.c_dunninglevel_id,
    cl.description,
    cl.m_product_class_id,
    cl.m_product_classification_id,
    cl.m_product_group_id,
    cl.c_campaign_id,
    cl.c_project_id,
    cl.c_paymentterm_id,
    c.c_commissiongroup_id,
    c.name,
    c.c_currency_id,
    c.docbasistype,
    c.frequencytype,
    c.c_charge_id,
    c.isallowrma,
    c.listdetails,
    c.datelastrun,
    c.istotallypaid,
    cr.docstatus,
    cr.c_doctype_id
FROM ccomr cr
JOIN ccomamt ca ON ca.c_commissionrun_id = cr.c_commissionrun_id
JOIN ccomln cl ON cl.c_commissionline_id = ca.c_commissionline_id
JOIN ccom c ON c.c_commission_id = cl.c_commission_id;
JOIN ccomamt c ON c.c_commission_id = cl.c_commission_id;
JOIN ccomdet c ON c.c_commission_id = cl.c_commission_id;
JOIN ccomgrp c ON c.c_commission_id = cl.c_commission_id;
JOIN ccomln c ON c.c_commission_id = cl.c_commission_id;
JOIN ccomr c ON c.c_commission_id = cl.c_commission_id;
JOIN ccomslsr c ON c.c_commission_id = cl.c_commission_id;

