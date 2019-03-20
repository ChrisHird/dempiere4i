-- View: rv_c_invoiceline

-- DROP VIEW rv_c_invoiceline;

 SELECT il.ad_client_id,
    il.ad_org_id,
    il.isactive,
    il.created,
    il.createdby,
    il.updated,
    il.updatedby,
    il.c_invoiceline_id,
    i.c_invoice_id,
    i.salesrep_id,
    i.c_bpartner_id,
    i.c_bp_group_id,
    il.m_product_id,
    p.m_product_category_id,
    i.dateinvoiced,
    i.dateacct,
    i.issotrx,
    i.c_doctype_id,
    i.docstatus,
    i.ispaid,
    il.c_campaign_id,
    il.c_project_id,
    il.c_activity_id,
    il.c_projectphase_id,
    il.c_projecttask_id,
    il.qtyinvoiced * i.multiplier AS qtyinvoiced,
    il.qtyentered * i.multiplier AS qtyentered,
    il.m_attributesetinstance_id,
    productattribute(il.m_attributesetinstance_id) AS productattribute,
    pasi.m_attributeset_id,
    pasi.m_lot_id,
    pasi.guaranteedate,
    pasi.lot,
    pasi.serno,
    il.pricelist,
    il.priceactual,
    il.pricelimit,
    il.priceentered,
        CASE
            WHEN il.pricelist = 0 THEN 0
            ELSE round((il.pricelist - il.priceactual) / il.pricelist * 100, 2)
        END AS discount,
        CASE
            WHEN il.pricelimit = 0 THEN 0
            ELSE round((il.priceactual - il.pricelimit) / il.pricelimit * 100, 2)
        END AS margin,
        CASE
            WHEN il.pricelimit = 0 THEN 0
            ELSE (il.priceactual - il.pricelimit) * il.qtyinvoiced
        END AS marginamt,
    round(i.multiplier * il.linenetamt, 2) AS linenetamt,
    round(i.multiplier * il.pricelist * il.qtyinvoiced, 2) AS linelistamt,
        CASE
            WHEN COALESCE(il.pricelimit, 0) = 0 THEN round(i.multiplier * il.linenetamt, 2)
            ELSE round(i.multiplier * il.pricelimit * il.qtyinvoiced, 2)
        END AS linelimitamt,
    round(i.multiplier * il.pricelist * il.qtyinvoiced - il.linenetamt, 2) AS linediscountamt,
        CASE
            WHEN COALESCE(il.pricelimit, 0) = 0 THEN 0
            ELSE round(i.multiplier * il.linenetamt - il.pricelimit * il.qtyinvoiced, 2)
        END AS lineoverlimitamt,
    p.m_product_class_id,
    p.m_product_group_id,
    p.m_product_classification_id,
    i.description,
    il.description AS linedescription,
    i.c_doctypetarget_id
JOIN cinvln il ON i.c_invoice_id = il.c_invoice_id
     LEFT JOIN m_product p ON il.m_product_id = p.m_product_id
JOIN matrseti pasi ON il.m_attributesetinstance_id = pasi.m_attributesetinstance_id;

