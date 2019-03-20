-- View: c_invoice_candidate_ship_v

-- DROP VIEW c_invoice_candidate_ship_v;

 SELECT "inout".ad_client_id,
    "inout".ad_org_id,
    "inout".c_bpartner_id,
    "inout".m_inout_id,
    "inout".description,
    "inout".documentno,
    "inout".dateordered,
    "inout".movementdate,
    "inout".c_doctype_id,
    sum(l.movementqty) AS qtytoinvoice
   FROM m_inout "inout"
JOIN mioln l ON "inout".m_inout_id = l.m_inout_id AND l.isinvoiced = 'N'
JOIN miolncfm l ON "inout".m_inout_id = l.m_inout_id AND l.isinvoiced = 'N'
JOIN miolnma l ON "inout".m_inout_id = l.m_inout_id AND l.isinvoiced = 'N'
     JOIN c_bpartner bp ON "inout".c_bpartner_id = bp.c_bpartner_id
JOIN cinvsch si ON bp.c_invoiceschedule_id = si.c_invoiceschedule_id
  WHERE ("inout".docstatus = ANY (ARRAY['CO', 'CL'])) AND "inout".issotrx = 'Y'
  GROUP BY "inout".ad_client_id, "inout".ad_org_id, "inout".c_bpartner_id, "inout".m_inout_id,
  "inout".description, "inout".documentno,
  "inout".dateordered, "inout".movementdate, "inout".c_doctype_id;

