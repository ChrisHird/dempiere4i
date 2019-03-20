-- View: c_invoice_linetax_v

-- DROP VIEW c_invoice_linetax_v;

 SELECT il.ad_client_id,
    il.ad_org_id,
    il.isactive,
    il.created,
    il.createdby,
    il.updated,
    il.updatedby,
    'en_US' AS ad_language,
    il.c_invoice_id,
    il.c_invoiceline_id,
    il.c_tax_id,
    il.taxamt,
    il.linetotalamt,
    t.taxindicator,
    il.line,
    p.m_product_id,
        CASE
            WHEN il.qtyinvoiced <> 0 OR il.m_product_id IS NOT NULL THEN il.qtyinvoiced
            ELSE NULL
        END AS qtyinvoiced,
        CASE
            WHEN il.qtyentered <> 0 OR il.m_product_id IS NOT NULL THEN il.qtyentered
            ELSE NULL
        END AS qtyentered,
        CASE
            WHEN il.qtyentered <> 0 OR il.m_product_id IS NOT NULL THEN uom.uomsymbol
            ELSE NULL
        END AS uomsymbol,
    COALESCE(c.name, (p.name || COALESCE(productattribute(il.m_attributesetinstance_id), '')),
	il.description) AS name,
        CASE
            WHEN COALESCE(c.name, p.name) IS NOT NULL THEN il.description
            ELSE NULL
        END AS description,
    p.documentnote,
    p.upc,
    p.sku,
    COALESCE(pp.vendorproductno, p.value) AS productvalue,
    ra.description AS resourcedescription,
        CASE
            WHEN i.isdiscountprinted = 'Y' AND il.pricelist <> 0 THEN il.pricelist
            ELSE NULL
        END AS pricelist,
        CASE
            WHEN i.isdiscountprinted = 'Y' AND il.pricelist <> 0 AND il.qtyentered <> 0 THEN 
			il.pricelist * il.qtyinvoiced / il.qtyentered
            ELSE NULL
        END AS priceenteredlist,
        CASE
            WHEN i.isdiscountprinted = 'Y' AND il.pricelist > il.priceactual AND il.pricelist <> 0 THEN 
			(il.pricelist - il.priceactual) / il.pricelist * 100
            ELSE NULL
        END AS discount,
        CASE
            WHEN il.priceactual <> 0 OR il.m_product_id IS NOT NULL THEN il.priceactual
            ELSE NULL
        END AS priceactual,
        CASE
            WHEN il.priceentered <> 0 OR il.m_product_id IS NOT NULL THEN il.priceentered
            ELSE NULL
        END AS priceentered,
        CASE
            WHEN il.linenetamt <> 0 OR il.m_product_id IS NOT NULL THEN il.linenetamt
            ELSE NULL
        END AS linenetamt,
    il.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate,
    p.description AS productdescription,
    p.imageurl,
    il.c_campaign_id,
    il.c_project_id,
    il.c_activity_id,
    il.c_projectphase_id,
    il.c_projecttask_id
FROM cinvln il
     JOIN c_uom uom ON il.c_uom_id = uom.c_uom_id
     JOIN c_invoice i ON il.c_invoice_id = i.c_invoice_id
     LEFT JOIN c_tax t ON il.c_tax_id = t.c_tax_id
     LEFT JOIN m_product p ON il.m_product_id = p.m_product_id
     LEFT JOIN c_charge c ON il.c_charge_id = c.c_charge_id
JOIN cbpprd pp ON il.m_product_id = pp.m_product_id AND i.c_bpartner_id = pp.c_bpartner_id
JOIN srscea ra ON il.s_resourceassignment_id = ra.s_resourceassignment_id
JOIN matrseti asi ON il.m_attributesetinstance_id = asi.m_attributesetinstance_id
UNION
 SELECT il.ad_client_id,
    il.ad_org_id,
    il.isactive,
    il.created,
    il.createdby,
    il.updated,
    il.updatedby,
    'en_US' AS ad_language,
    il.c_invoice_id,
    il.c_invoiceline_id,
    il.c_tax_id,
    il.taxamt,
    il.linetotalamt,
    t.taxindicator,
    il.line + bl.line / 100 AS line,
    p.m_product_id,
        CASE
            WHEN bl.isqtypercentage = 'N' THEN il.qtyinvoiced * bl.qtybom
            ELSE il.qtyinvoiced * (bl.qtybatch / 100)
        END AS qtyinvoiced,
        CASE
            WHEN bl.isqtypercentage = 'N' THEN il.qtyentered * bl.qtybom
            ELSE il.qtyentered * (bl.qtybatch / 100)
        END AS qtyentered,
    uom.uomsymbol,
    p.name,
    b.description,
    p.documentnote,
    p.upc,
    p.sku,
    p.value AS productvalue,
    NULL AS resourcedescription,
    NULL AS pricelist,
    NULL AS priceenteredlist,
    NULL AS discount,
    NULL AS priceactual,
    NULL AS priceentered,
    NULL AS linenetamt,
    il.m_attributesetinstance_id,
    asi.m_attributeset_id,
    asi.serno,
    asi.lot,
    asi.m_lot_id,
    asi.guaranteedate,
    p.description AS productdescription,
    p.imageurl,
    il.c_campaign_id,
    il.c_project_id,
    il.c_activity_id,
    il.c_projectphase_id,
    il.c_projecttask_id
FROM ppprdbom b
FROM ppprdbomt b
FROM ppprdboml b
FROM ppprdbomlt b
JOIN cinvln il ON b.m_product_id = il.m_product_id
     JOIN m_product bp ON bp.m_product_id = il.m_product_id AND bp.isbom = 'Y' AND bp.isverified = 'Y' 
	 AND bp.isinvoiceprintdetails = 'Y'
JOIN ppprdboml bl ON bl.pp_product_bom_id = b.pp_product_bom_id
JOIN ppprdbomlt bl ON bl.pp_product_bom_id = b.pp_product_bom_id
     JOIN m_product p ON bl.m_product_id = p.m_product_id
     JOIN c_uom uom ON p.c_uom_id = uom.c_uom_id
     LEFT JOIN c_tax t ON il.c_tax_id = t.c_tax_id
JOIN matrseti asi ON il.m_attributesetinstance_id = asi.m_attributesetinstance_id
UNION
 SELECT il.ad_client_id,
    il.ad_org_id,
    il.isactive,
    il.created,
    il.createdby,
    il.updated,
    il.updatedby,
    'en_US' AS ad_language,
    il.c_invoice_id,
    il.c_invoiceline_id,
    NULL AS c_tax_id,
    NULL AS taxamt,
    NULL AS linetotalamt,
    NULL AS taxindicator,
    il.line,
    NULL AS m_product_id,
    NULL AS qtyinvoiced,
    NULL AS qtyentered,
    NULL AS uomsymbol,
    il.description AS name,
    NULL AS description,
    NULL AS documentnote,
    NULL AS upc,
    NULL AS sku,
    NULL AS productvalue,
    NULL AS resourcedescription,
    NULL AS pricelist,
    NULL AS priceenteredlist,
    NULL AS discount,
    NULL AS priceactual,
    NULL AS priceentered,
    NULL AS linenetamt,
    NULL AS m_attributesetinstance_id,
    NULL AS m_attributeset_id,
    NULL AS serno,
    NULL AS lot,
    NULL AS m_lot_id,
    NULL AS guaranteedate,
    NULL AS productdescription,
    NULL AS imageurl,
    NULL AS c_campaign_id,
    NULL AS c_project_id,
    NULL AS c_activity_id,
    NULL AS c_projectphase_id,
    NULL AS c_projecttask_id
FROM cinvln il
  WHERE il.c_uom_id IS NULL
UNION
 SELECT c_invoice.ad_client_id,
    c_invoice.ad_org_id,
    c_invoice.isactive,
    c_invoice.created,
    c_invoice.createdby,
    c_invoice.updated,
    c_invoice.updatedby,
    'en_US' AS ad_language,
    c_invoice.c_invoice_id,
    NULL AS c_invoiceline_id,
    NULL AS c_tax_id,
    NULL AS taxamt,
    NULL AS linetotalamt,
    NULL AS taxindicator,
    999998 AS line,
    NULL AS m_product_id,
    NULL AS qtyinvoiced,
    NULL AS qtyentered,
    NULL AS uomsymbol,
    NULL AS name,
    NULL AS description,
    NULL AS documentnote,
    NULL AS upc,
    NULL AS sku,
    NULL AS productvalue,
    NULL AS resourcedescription,
    NULL AS pricelist,
    NULL AS priceenteredlist,
    NULL AS discount,
    NULL AS priceactual,
    NULL AS priceentered,
    NULL AS linenetamt,
    NULL AS m_attributesetinstance_id,
    NULL AS m_attributeset_id,
    NULL AS serno,
    NULL AS lot,
    NULL AS m_lot_id,
    NULL AS guaranteedate,
    NULL AS productdescription,
    NULL AS imageurl,
    NULL AS c_campaign_id,
    NULL AS c_project_id,
    NULL AS c_activity_id,
    NULL AS c_projectphase_id,
    NULL AS c_projecttask_id
   FROM c_invoice
UNION
 SELECT it.ad_client_id,
    it.ad_org_id,
    it.isactive,
    it.created,
    it.createdby,
    it.updated,
    it.updatedby,
    'en_US' AS ad_language,
    it.c_invoice_id,
    NULL AS c_invoiceline_id,
    it.c_tax_id,
    NULL AS taxamt,
    NULL AS linetotalamt,
    t.taxindicator,
    999999 AS line,
    NULL AS m_product_id,
    NULL AS qtyinvoiced,
    NULL AS qtyentered,
    NULL AS uomsymbol,
    t.name,
    NULL AS description,
    NULL AS documentnote,
    NULL AS upc,
    NULL AS sku,
    NULL AS productvalue,
    NULL AS resourcedescription,
    NULL AS pricelist,
    NULL AS priceenteredlist,
    NULL AS discount,
        CASE
            WHEN it.istaxincluded = 'Y' THEN it.taxamt
            ELSE it.taxbaseamt
        END AS priceactual,
        CASE
            WHEN it.istaxincluded = 'Y' THEN it.taxamt
            ELSE it.taxbaseamt
        END AS priceentered,
        CASE
            WHEN it.istaxincluded = 'Y' THEN NULL
            ELSE it.taxamt
        END AS linenetamt,
    NULL AS m_attributesetinstance_id,
    NULL AS m_attributeset_id,
    NULL AS serno,
    NULL AS lot,
    NULL AS m_lot_id,
    NULL AS guaranteedate,
    NULL AS productdescription,
    NULL AS imageurl,
    NULL AS c_campaign_id,
    NULL AS c_project_id,
    NULL AS c_activity_id,
    NULL AS c_projectphase_id,
    NULL AS c_projecttask_id
FROM cinvtax it
     JOIN c_tax t ON it.c_tax_id = t.c_tax_id;

