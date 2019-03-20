-- View: rv_c_invoicetax

-- DROP VIEW rv_c_invoicetax;

 SELECT i.ad_client_id,
    i.ad_org_id,
    i.isactive,
    t.created,
    t.createdby,
    t.updated,
    t.updatedby,
    t.c_tax_id,
    i.c_invoice_id,
    i.c_doctype_id,
    i.c_bpartner_id,
    bp.taxid,
    bp.istaxexempt,
    i.dateacct,
    i.dateinvoiced,
    i.issotrx,
    i.documentno,
    i.ispaid,
    i.c_currency_id,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN t.taxbaseamt * '-1'
            ELSE t.taxbaseamt
        END AS taxbaseamt,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN t.taxamt * '-1'
            ELSE t.taxamt
        END AS taxamt,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN (t.taxbaseamt + t.taxamt) * '-1'
            ELSE t.taxbaseamt + t.taxamt
        END AS taxlinetotal,
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN '-1'
            ELSE 1
        END AS multiplier
FROM cinvtax t
     JOIN c_invoice i ON t.c_invoice_id = i.c_invoice_id
     JOIN c_doctype d ON i.c_doctype_id = d.c_doctype_id
     JOIN c_bpartner bp ON i.c_bpartner_id = bp.c_bpartner_id;

