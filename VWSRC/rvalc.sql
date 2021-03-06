﻿-- View: rv_allocation

-- DROP VIEW rv_allocation;

 SELECT h.c_allocationhdr_id,
    h.ad_client_id,
    h.ad_org_id,
    h.isactive,
    h.created,
    h.createdby,
    h.updated,
    h.updatedby,
    h.documentno,
    h.description,
    h.datetrx,
    h.dateacct,
    h.c_currency_id,
    h.approvalamt,
    h.ismanual,
    h.docstatus,
    h.docaction,
    h.processed,
    l.c_allocationline_id,
    l.c_invoice_id,
    l.c_bpartner_id,
    l.c_order_id,
    l.c_payment_id,
    l.c_cashline_id,
    l.amount,
    l.discountamt,
    l.writeoffamt,
    l.overunderamt
FROM calchdr h
JOIN calcln l ON h.c_allocationhdr_id = l.c_allocationhdr_id;

