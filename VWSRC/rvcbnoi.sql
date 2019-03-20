-- View: rv_combinedopenitem

-- DROP VIEW rv_combinedopenitem;

 SELECT i.ad_org_id,
    i.ad_client_id,
    i.documentno,
    i.c_invoice_id,
    NULL AS c_payment_id,
    i.c_order_id,
    i.c_bpartner_id,
    i.issotrx,
    i.dateinvoiced,
    i.dateacct,
    p.netdays,
    paymenttermduedate(i.c_paymentterm_id, i.dateinvoiced) AS duedate,
    paymenttermduedays(i.c_paymentterm_id, i.dateinvoiced, getdate()) AS daysdue,
    adddays(i.dateinvoiced, p.discountdays) AS discountdate,
    round(i.grandtotal * p.discount / 100, 2) AS discountamt,
    i.grandtotal,
    i.c_currency_id,
    i.c_conversiontype_id,
    i.c_paymentterm_id,
    i.ispayschedulevalid,
    NULL AS c_invoicepayschedule_id,
    i.invoicecollectiontype,
    i.c_campaign_id,
    i.c_project_id,
    i.c_activity_id
JOIN cpaytrm p ON i.c_paymentterm_id = p.c_paymentterm_id
JOIN cpaytrmt p ON i.c_paymentterm_id = p.c_paymentterm_id
  WHERE (i.ispayschedulevalid <> 'Y' OR NOT (EXISTS ( SELECT 1
FROM cinvps ps
          WHERE ps.c_invoice_id = i.c_invoice_id))) AND (i.docstatus <> ALL (ARRAY['DR', 'IP', 'VO', 'RE']))
UNION ALL
 SELECT i.ad_org_id,
    i.ad_client_id,
    i.documentno,
    i.c_invoice_id,
    NULL AS c_payment_id,
    i.c_order_id,
    i.c_bpartner_id,
    i.issotrx,
    i.dateinvoiced,
    i.dateacct,
    daysbetween(ips.duedate, i.dateinvoiced) AS netdays,
    ips.duedate,
    daysbetween(getdate(), ips.duedate) AS daysdue,
    ips.discountdate,
    ips.discountamt,
    ips.dueamt AS grandtotal,
    i.c_currency_id,
    i.c_conversiontype_id,
    i.c_paymentterm_id,
    i.ispayschedulevalid,
    ips.c_invoicepayschedule_id,
    i.invoicecollectiontype,
    i.c_campaign_id,
    i.c_project_id,
    i.c_activity_id
JOIN cinvps ips ON i.c_invoice_id = ips.c_invoice_id
  WHERE i.ispayschedulevalid = 'Y' AND (i.docstatus <> ALL (ARRAY['DR', 'IP', 'VO', 'RE'])) AND ips.isvalid = 'Y'
UNION ALL
 SELECT p.ad_org_id,
    p.ad_client_id,
    p.documentno,
    NULL AS c_invoice_id,
    p.c_payment_id,
    NULL AS c_order_id,
    p.c_bpartner_id,
    p.isreceipt AS issotrx,
    p.datetrx AS dateinvoiced,
    p.dateacct,
    0 AS netdays,
    p.datetrx AS duedate,
    0 AS daysdue,
    NULL AS discountdate,
    0 AS discountamt,
    p.payamt * '-1' AS grandtotal,
    p.c_currency_id,
    p.c_conversiontype_id,
    NULL AS c_paymentterm_id,
    NULL AS ispayschedulevalid,
    NULL AS c_invoicepayschedule_id,
    NULL AS invoicecollectiontype,
    p.c_campaign_id,
    p.c_project_id,
    p.c_activity_id
   FROM c_payment p
  WHERE p.docstatus <> ALL (ARRAY['DR', 'IP', 'VO', 'RE']);

