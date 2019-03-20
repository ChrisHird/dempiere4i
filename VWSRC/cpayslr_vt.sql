-- View: c_payselection_remittance_vt

-- DROP VIEW c_payselection_remittance_vt;

 SELECT psl.ad_client_id,
    psl.ad_org_id,
    l.ad_language,
    psl.c_payselection_id,
    psl.c_payselectionline_id,
    psl.c_payselectioncheck_id,
    psl.paymentrule,
    psl.line,
    psl.openamt,
    psl.payamt,
    psl.discountamt,
    psl.differenceamt,
    i.c_bpartner_id,
    i.documentno,
    i.dateinvoiced,
    i.grandtotal,
    i.grandtotal AS amtinwords
FROM cpayselln psl
     JOIN c_invoice i ON psl.c_invoice_id = i.c_invoice_id
JOIN adlng l ON l.issystemlanguage = 'Y';

