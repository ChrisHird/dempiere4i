-- View: rv_c_invoice_prodmonth

-- DROP VIEW rv_c_invoice_prodmonth;

 SELECT il.ad_client_id,
    il.ad_org_id,
    il.m_product_category_id,
    firstof(il.dateinvoiced, 'MM') AS dateinvoiced,
    sum(il.linenetamt) AS linenetamt,
    sum(il.linelistamt) AS linelistamt,
    sum(il.linelimitamt) AS linelimitamt,
    sum(il.linediscountamt) AS linediscountamt,
        CASE
            WHEN sum(il.linelistamt) = 0 THEN 0
            ELSE round((sum(il.linelistamt) - sum(il.linenetamt)) / sum(il.linelistamt) * 100, 2)
        END AS linediscount,
    sum(il.lineoverlimitamt) AS lineoverlimitamt,
        CASE
            WHEN sum(il.linenetamt) = 0 THEN 0
            ELSE 100 - round((sum(il.linenetamt) - sum(il.lineoverlimitamt)) / sum(il.linenetamt) * 100, 2)
        END AS lineoverlimit,
    sum(il.qtyinvoiced) AS qtyinvoiced,
    il.issotrx,
    il.c_bpartner_id,
    il.c_bp_group_id,
    il.c_doctypetarget_id,
    il.docstatus,
    il.m_product_class_id,
    il.m_product_group_id,
    il.m_product_classification_id
  GROUP BY il.ad_client_id, il.ad_org_id, il.m_product_category_id, (firstof(il.dateinvoiced, 'MM')),
  il.issotrx, il.c_bpartner_id, il.c_bp_group_id, il.c_doctypetarget_id, il.docstatus, il.m_product_class_id,
  il.m_product_group_id, il.m_product_classification_id;

