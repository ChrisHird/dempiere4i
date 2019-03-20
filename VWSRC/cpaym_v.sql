-- View: c_payment_v

-- DROP VIEW c_payment_v;

 SELECT p.c_payment_id,
    p.ad_client_id,
    p.ad_org_id,
    p.isactive,
    p.created,
    p.createdby,
    p.updated,
    p.updatedby,
    p.documentno,
    p.datetrx,
    p.dateacct,
    p.isreceipt,
    p.c_doctype_id,
    p.trxtype,
    p.c_bankaccount_id,
    p.c_bpartner_id,
    p.c_invoice_id,
    p.c_bp_bankaccount_id,
    p.c_paymentbatch_id,
    p.tendertype,
    p.creditcardtype,
    p.creditcardnumber,
    p.creditcardvv,
    p.creditcardexpmm,
    p.creditcardexpyy,
    p.micr,
    p.routingno,
    p.accountno,
    p.checkno,
    p.a_name,
    p.a_street,
    p.a_city,
    p.a_state,
    p.a_zip,
    p.a_ident_dl,
    p.a_ident_ssn,
    p.a_email,
    p.voiceauthcode,
    p.orig_trxid,
    p.ponum,
    p.c_currency_id,
    p.c_conversiontype_id,
        CASE p.isreceipt
            WHEN 'Y' THEN p.payamt
            ELSE p.payamt * '-1'
        END AS payamt,
        CASE p.isreceipt
            WHEN 'Y' THEN p.discountamt
            ELSE p.discountamt * '-1'
        END AS discountamt,
        CASE p.isreceipt
            WHEN 'Y' THEN p.writeoffamt
            ELSE p.writeoffamt * '-1'
        END AS writeoffamt,
        CASE p.isreceipt
            WHEN 'Y' THEN p.taxamt
            ELSE p.taxamt * '-1'
        END AS taxamt,
        CASE p.isreceipt
            WHEN 'Y' THEN p.overunderamt
            ELSE p.overunderamt * '-1'
        END AS overunderamt,
        CASE p.isreceipt
            WHEN 'Y' THEN 1
            ELSE '-1'
        END AS multiplierap,
    p.isoverunderpayment,
    p.isapproved,
    p.r_pnref,
    p.r_result,
    p.r_respmsg,
    p.r_authcode,
    p.r_avsaddr,
    p.r_avszip,
    p.r_info,
    p.processing,
    p.oprocessing,
    p.docstatus,
    p.docaction,
    p.isprepayment,
    p.c_charge_id,
    p.isreconciled,
    p.isallocated,
    p.isonline,
    p.processed,
    p.posted,
    p.c_campaign_id,
    p.c_project_id,
    p.c_activity_id,
    p.c_order_id,
    p.user1_id,
    p.user2_id,
    p.description
   FROM c_payment p;

