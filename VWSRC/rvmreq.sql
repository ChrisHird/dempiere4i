-- View: rv_m_requisition

-- DROP VIEW rv_m_requisition;

 SELECT r.m_requisition_id,
    r.ad_client_id,
    r.ad_org_id,
    r.isactive,
    r.created,
    r.createdby,
    r.updated,
    r.updatedby,
    r.documentno,
    r.description,
    r.help,
    r.ad_user_id,
    r.m_pricelist_id,
    r.m_warehouse_id,
    r.isapproved,
    r.priorityrule,
    r.daterequired,
    r.totallines,
    r.docaction,
    r.docstatus,
    r.processed,
    l.m_requisitionline_id,
    l.line,
    l.qty,
        CASE
            WHEN l.c_orderline_id IS NOT NULL THEN l.qty
            ELSE 0
        END AS qtyordered,
    l.m_product_id,
    l.description AS linedescription,
    l.priceactual,
    l.linenetamt
FROM mreq r
FROM mreqln r
JOIN mreqln l ON r.m_requisition_id = l.m_requisition_id;

