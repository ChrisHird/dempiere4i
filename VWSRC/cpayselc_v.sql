-- View: c_payselection_check_v

-- DROP VIEW c_payselection_check_v;

 SELECT psc.ad_client_id,
    psc.ad_org_id,
    'en_US' AS ad_language,
    psc.c_payselection_id,
    psc.c_payselectioncheck_id,
    oi.c_location_id AS org_location_id,
    oi.taxid,
    p.c_doctype_id,
    bp.c_bpartner_id,
    bp.value AS bpvalue,
    bp.taxid AS bptaxid,
    bp.naics,
    bp.duns,
    bpg.greeting AS bpgreeting,
    bp.name,
    bp.name2,
    bpartnerremitlocation(bp.c_bpartner_id) AS c_location_id,
    bp.referenceno,
    bp.poreference,
    ps.paydate,
    psc.payamt,
    psc.payamt AS amtinwords,
    psc.qty,
    psc.paymentrule,
    psc.documentno,
    COALESCE(oi.logo_id, ci.logo_id) AS logo_id,
    dt.printname AS documenttype,
    dt.documentnote AS documenttypenote,
    p.description,
    0 AS hr_payselection_id,
    0 AS hr_payselectioncheck_id,
    p.c_payment_id,
    p.c_bankaccount_id,
    b.c_bank_id,
    p.c_currency_id
FROM cpayselchk psc
JOIN cpaysel ps ON psc.c_payselection_id = ps.c_payselection_id
JOIN cpayselchk ps ON psc.c_payselection_id = ps.c_payselection_id
JOIN cpayselln ps ON psc.c_payselection_id = ps.c_payselection_id
     LEFT JOIN c_payment p ON psc.c_payment_id = p.c_payment_id
JOIN cbacct ba ON p.c_bankaccount_id = ba.c_bankaccount_id
JOIN cbaccta ba ON p.c_bankaccount_id = ba.c_bankaccount_id
JOIN cbnkadoc ba ON p.c_bankaccount_id = ba.c_bankaccount_id
     LEFT JOIN c_bank b ON ba.c_bank_id = b.c_bank_id
     LEFT JOIN c_doctype dt ON p.c_doctype_id = dt.c_doctype_id
     JOIN c_bpartner bp ON psc.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN c_greeting bpg ON bp.c_greeting_id = bpg.c_greeting_id
     JOIN ad_orginfo oi ON psc.ad_org_id = oi.ad_org_id
JOIN adclntinf ci ON psc.ad_client_id = ci.ad_client_id
UNION
 SELECT psc.ad_client_id,
    psc.ad_org_id,
    'en_US' AS ad_language,
    0 AS c_payselection_id,
    0 AS c_payselectioncheck_id,
    oi.c_location_id AS org_location_id,
    oi.taxid,
    0 AS c_doctype_id,
    bp.c_bpartner_id,
    bp.value AS bpvalue,
    bp.taxid AS bptaxid,
    bp.naics,
    bp.duns,
    bpg.greeting AS bpgreeting,
    bp.name,
    bp.name2,
    bpartnerremitlocation(bp.c_bpartner_id) AS c_location_id,
    bp.referenceno,
    bp.poreference,
    ps.paydate,
    psc.payamt,
    psc.payamt AS amtinwords,
    psc.qty,
    psc.paymentrule,
    psc.documentno,
    COALESCE(oi.logo_id, ci.logo_id) AS logo_id,
    dt.printname AS documenttype,
    dt.documentnote AS documenttypenote,
    p.description,
    psc.hr_payselection_id,
    psc.hr_payselectioncheck_id,
    p.c_payment_id,
    p.c_bankaccount_id,
    b.c_bank_id,
    p.c_currency_id
FROM hrpayselc psc
JOIN hrpaysel ps ON psc.hr_payselection_id = ps.hr_payselection_id
JOIN hrpayselc ps ON psc.hr_payselection_id = ps.hr_payselection_id
JOIN hrpayselln ps ON psc.hr_payselection_id = ps.hr_payselection_id
     LEFT JOIN c_payment p ON psc.c_payment_id = p.c_payment_id
JOIN cbacct ba ON p.c_bankaccount_id = ba.c_bankaccount_id
JOIN cbaccta ba ON p.c_bankaccount_id = ba.c_bankaccount_id
JOIN cbnkadoc ba ON p.c_bankaccount_id = ba.c_bankaccount_id
     LEFT JOIN c_bank b ON ba.c_bank_id = b.c_bank_id
     LEFT JOIN c_doctype dt ON p.c_doctype_id = dt.c_doctype_id
     JOIN c_bpartner bp ON psc.c_bpartner_id = bp.c_bpartner_id
     LEFT JOIN c_greeting bpg ON bp.c_greeting_id = bpg.c_greeting_id
     JOIN ad_orginfo oi ON psc.ad_org_id = oi.ad_org_id
JOIN adclntinf ci ON psc.ad_client_id = ci.ad_client_id;

