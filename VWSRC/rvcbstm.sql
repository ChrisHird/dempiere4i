-- View: rv_c_bankstatement

-- DROP VIEW rv_c_bankstatement;

 SELECT bsl.c_bankstatementline_id,
    bsl.ad_client_id,
    bsl.ad_org_id,
    bsl.isactive,
    bsl.created,
    bsl.createdby,
    bsl.updated,
    bsl.updatedby,
    bsl.line,
    bsl.description,
    bsl.isreversal,
    bsl.c_payment_id,
    bsl.valutadate,
    bsl.dateacct,
    bsl.c_currency_id,
    bsl.trxamt,
    bsl.stmtamt,
    bsl.c_charge_id,
    bsl.chargeamt,
    bsl.interestamt,
    bsl.memo,
    bsl.referenceno,
    bsl.ismanual,
    bsl.efttrxid,
    bsl.efttrxtype,
    bsl.eftmemo,
    bsl.eftpayee,
    bsl.eftpayeeaccount,
    bsl.createpayment,
    bsl.statementlinedate,
    bsl.eftstatementlinedate,
    bsl.eftvalutadate,
    bsl.eftreference,
    bsl.eftcurrency,
    bsl.eftamt,
    bsl.eftcheckno,
    bsl.matchstatement,
    bsl.c_bpartner_id,
    bsl.c_invoice_id,
    bsl.processed,
    bs.c_bankstatement_id,
    bs.c_bankaccount_id,
    bs.name,
    bs.description AS note,
    bs.docstatus,
    bs.beginningbalance,
    bs.statementdifference,
    bs.endingbalance,
    bs.statementdate,
    bs.eftstatementdate,
    bs.eftstatementreference,
    ba.c_bank_id,
    p.datetrx,
    p.c_doctype_id,
    p.tendertype,
    p.payamt,
    o.c_order_id,
    o.dateordered,
    o.grandtotal,
    o.c_pos_id,
    o.salesrep_id,
    o.amountrefunded,
    o.amounttendered,
    i.dateinvoiced,
    i.ispaid,
    i.grandtotal AS invoiceamt
FROM cbstmtln bsl
JOIN cbstmt bs ON bsl.c_bankstatement_id = bs.c_bankstatement_id
JOIN cbstmtln bs ON bsl.c_bankstatement_id = bs.c_bankstatement_id
JOIN cbstmtldr bs ON bsl.c_bankstatement_id = bs.c_bankstatement_id
JOIN cbstmtmch bs ON bsl.c_bankstatement_id = bs.c_bankstatement_id
JOIN cbacct ba ON bs.c_bankaccount_id = ba.c_bankaccount_id
JOIN cbaccta ba ON bs.c_bankaccount_id = ba.c_bankaccount_id
JOIN cbnkadoc ba ON bs.c_bankaccount_id = ba.c_bankaccount_id
     LEFT JOIN c_payment p ON bsl.c_payment_id = p.c_payment_id
     LEFT JOIN c_order o ON p.c_order_id = o.c_order_id
     LEFT JOIN c_invoice i ON bsl.c_invoice_id = i.c_invoice_id;

