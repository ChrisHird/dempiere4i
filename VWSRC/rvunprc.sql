﻿-- View: rv_unprocessed

-- DROP VIEW rv_unprocessed;

 SELECT gl_journal.ad_client_id,
    gl_journal.ad_org_id,
    gl_journal.created,
    gl_journal.createdby,
    gl_journal.updated,
    gl_journal.updatedby,
    gl_journal.isactive,
    gl_journal.documentno,
    gl_journal.datedoc,
    gl_journal.dateacct,
    224 AS ad_table_id,
    gl_journal.gl_journal_id AS record_id,
    'N' AS issotrx,
    gl_journal.posted,
    gl_journal.processing,
    gl_journal.processed,
    gl_journal.docstatus
  WHERE gl_journal.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT c_invoice.ad_client_id,
    c_invoice.ad_org_id,
    c_invoice.created,
    c_invoice.createdby,
    c_invoice.updated,
    c_invoice.updatedby,
    c_invoice.isactive,
    c_invoice.documentno,
    c_invoice.dateinvoiced AS datedoc,
    c_invoice.dateacct,
    318 AS ad_table_id,
    c_invoice.c_invoice_id AS record_id,
    c_invoice.issotrx,
    c_invoice.posted,
    c_invoice.processing,
    c_invoice.processed,
    c_invoice.docstatus
   FROM c_invoice
  WHERE c_invoice.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT m_inout.ad_client_id,
    m_inout.ad_org_id,
    m_inout.created,
    m_inout.createdby,
    m_inout.updated,
    m_inout.updatedby,
    m_inout.isactive,
    m_inout.documentno,
    m_inout.movementdate AS datedoc,
    m_inout.dateacct,
    319 AS ad_table_id,
    m_inout.m_inout_id AS record_id,
    m_inout.issotrx,
    m_inout.posted,
    m_inout.processing,
    m_inout.processed,
    m_inout.docstatus
   FROM m_inout
  WHERE m_inout.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT m_inventory.ad_client_id,
    m_inventory.ad_org_id,
    m_inventory.created,
    m_inventory.createdby,
    m_inventory.updated,
    m_inventory.updatedby,
    m_inventory.isactive,
    m_inventory.documentno,
    m_inventory.movementdate AS datedoc,
    m_inventory.movementdate AS dateacct,
    321 AS ad_table_id,
    m_inventory.m_inventory_id AS record_id,
    'N' AS issotrx,
    m_inventory.posted,
    m_inventory.processing,
    m_inventory.processed,
    m_inventory.docstatus
  WHERE m_inventory.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT m_movement.ad_client_id,
    m_movement.ad_org_id,
    m_movement.created,
    m_movement.createdby,
    m_movement.updated,
    m_movement.updatedby,
    m_movement.isactive,
    m_movement.documentno,
    m_movement.movementdate AS datedoc,
    m_movement.movementdate AS dateacct,
    323 AS ad_table_id,
    m_movement.m_movement_id AS record_id,
    'N' AS issotrx,
    m_movement.posted,
    m_movement.processing,
    m_movement.processed,
    m_movement.docstatus
  WHERE m_movement.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT c_cash.ad_client_id,
    c_cash.ad_org_id,
    c_cash.created,
    c_cash.createdby,
    c_cash.updated,
    c_cash.updatedby,
    c_cash.isactive,
    c_cash.name AS documentno,
    c_cash.statementdate AS datedoc,
    c_cash.dateacct,
    407 AS ad_table_id,
    c_cash.c_cash_id AS record_id,
    'N' AS issotrx,
    c_cash.posted,
    c_cash.processing,
    c_cash.processed,
    c_cash.docstatus
   FROM c_cash
  WHERE c_cash.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT c_payment.ad_client_id,
    c_payment.ad_org_id,
    c_payment.created,
    c_payment.createdby,
    c_payment.updated,
    c_payment.updatedby,
    c_payment.isactive,
    c_payment.documentno,
    c_payment.datetrx AS datedoc,
    c_payment.datetrx AS dateacct,
    335 AS ad_table_id,
    c_payment.c_payment_id AS record_id,
    'N' AS issotrx,
    c_payment.posted,
    c_payment.processing,
    c_payment.processed,
    c_payment.docstatus
   FROM c_payment
  WHERE c_payment.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT c_allocationhdr.ad_client_id,
    c_allocationhdr.ad_org_id,
    c_allocationhdr.created,
    c_allocationhdr.createdby,
    c_allocationhdr.updated,
    c_allocationhdr.updatedby,
    c_allocationhdr.isactive,
    c_allocationhdr.documentno,
    c_allocationhdr.datetrx AS datedoc,
    c_allocationhdr.datetrx AS dateacct,
    735 AS ad_table_id,
    c_allocationhdr.c_allocationhdr_id AS record_id,
    'N' AS issotrx,
    c_allocationhdr.posted,
    c_allocationhdr.processing,
    c_allocationhdr.processed,
    c_allocationhdr.docstatus
  WHERE c_allocationhdr.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT c_bankstatement.ad_client_id,
    c_bankstatement.ad_org_id,
    c_bankstatement.created,
    c_bankstatement.createdby,
    c_bankstatement.updated,
    c_bankstatement.updatedby,
    c_bankstatement.isactive,
    c_bankstatement.name AS documentno,
    c_bankstatement.statementdate AS datedoc,
    c_bankstatement.statementdate AS dateacct,
    392 AS ad_table_id,
    c_bankstatement.c_bankstatement_id AS record_id,
    'N' AS issotrx,
    c_bankstatement.posted,
    c_bankstatement.processing,
    c_bankstatement.processed,
    c_bankstatement.docstatus
  WHERE c_bankstatement.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT c_order.ad_client_id,
    c_order.ad_org_id,
    c_order.created,
    c_order.createdby,
    c_order.updated,
    c_order.updatedby,
    c_order.isactive,
    c_order.documentno,
    c_order.dateordered AS datedoc,
    c_order.dateacct,
    259 AS ad_table_id,
    c_order.c_order_id AS record_id,
    c_order.issotrx,
    c_order.posted,
    c_order.processing,
    c_order.processed,
    c_order.docstatus
   FROM c_order
  WHERE c_order.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE'])
UNION
 SELECT m_requisition.ad_client_id,
    m_requisition.ad_org_id,
    m_requisition.created,
    m_requisition.createdby,
    m_requisition.updated,
    m_requisition.updatedby,
    m_requisition.isactive,
    m_requisition.documentno,
    m_requisition.daterequired AS datedoc,
    m_requisition.daterequired AS dateacct,
    702 AS ad_table_id,
    m_requisition.m_requisition_id AS record_id,
    'N' AS issotrx,
    m_requisition.posted,
    m_requisition.processing,
    m_requisition.processed,
    m_requisition.docstatus
  WHERE m_requisition.docstatus <> ALL (ARRAY['CO', 'CL', 'VO', 'RE']);

