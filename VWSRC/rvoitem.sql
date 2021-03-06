﻿-- View: rv_openitem

-- DROP VIEW rv_openitem;

 SELECT i.ad_org_id,
    i.ad_client_id,
    i.documentno,
    i.c_invoice_id,
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
    invoicepaid(i.c_invoice_id, i.c_currency_id, 1) AS paidamt,
    invoiceopen(i.c_invoice_id, 0) AS openamt,
    i.c_currency_id,
    i.c_conversiontype_id,
    i.c_paymentterm_id,
    i.ispayschedulevalid,
    NULL AS c_invoicepayschedule_id,
    i.invoicecollectiontype,
    i.c_campaign_id,
    i.c_project_id,
    i.c_activity_id,
    i.salesrep_id,
    i.description,
    i.c_doctype_id
JOIN cpaytrm p ON i.c_paymentterm_id = p.c_paymentterm_id
JOIN cpaytrmt p ON i.c_paymentterm_id = p.c_paymentterm_id
  WHERE invoiceopen(i.c_invoice_id, 0) <> 0 AND i.ispayschedulevalid <> 'Y' AND (i.docstatus = ANY (ARRAY['CO', 'CL']))
UNION
 SELECT i.ad_org_id,
    i.ad_client_id,
    i.documentno,
    i.c_invoice_id,
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
    invoicepaid(i.c_invoice_id, i.c_currency_id, 1) AS paidamt,
    invoiceopen(i.c_invoice_id, ips.c_invoicepayschedule_id) AS openamt,
    i.c_currency_id,
    i.c_conversiontype_id,
    i.c_paymentterm_id,
    i.ispayschedulevalid,
    ips.c_invoicepayschedule_id,
    i.invoicecollectiontype,
    i.c_campaign_id,
    i.c_project_id,
    i.c_activity_id,
    i.salesrep_id,
    i.description,
    i.c_doctype_id
JOIN cinvps ips ON i.c_invoice_id = ips.c_invoice_id
  WHERE invoiceopen(i.c_invoice_id, ips.c_invoicepayschedule_id) <> 0 AND i.ispayschedulevalid = 'Y' AND 
  (i.docstatus = ANY (ARRAY['CO', 'CL'])) AND ips.isvalid = 'Y';

