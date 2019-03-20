﻿-- View: rv_orderline_storage

-- DROP VIEW rv_orderline_storage;

 SELECT oline.c_orderline_id,
    oline.ad_client_id,
    oline.ad_org_id,
    oline.isactive,
    oline.created,
    oline.createdby,
    oline.updated,
    oline.updatedby,
    oline.c_order_id,
    oline.line,
    oline.c_bpartner_id,
    oline.c_bpartner_location_id,
    oline.dateordered,
    oline.datepromised,
    oline.datedelivered,
    oline.dateinvoiced,
    oline.description,
    oline.m_product_id,
    oline.m_warehouse_id,
    oline.c_uom_id,
    oline.qtyordered,
    oline.qtyreserved,
    oline.qtydelivered,
    oline.qtyinvoiced,
    oline.m_shipper_id,
    oline.c_currency_id,
    oline.pricelist,
    oline.priceactual,
    oline.pricelimit,
    oline.linenetamt,
    oline.discount,
    oline.freightamt,
    oline.c_charge_id,
    oline.c_tax_id,
    oline.s_resourceassignment_id,
    oline.ref_orderline_id,
    oline.m_attributesetinstance_id,
    oline.isdescription,
    oline.processed,
    oline.qtyentered,
    oline.priceentered,
    oline.c_project_id,
    oline.pricecost,
    oline.qtylostsales,
    oline.c_projectphase_id,
    oline.c_projecttask_id,
    oline.rrstartdate,
    oline.rramt,
    oline.c_campaign_id,
    oline.c_activity_id,
    oline.user1_id,
    oline.user2_id,
    oline.ad_orgtrx_id,
    oline.link_orderline_id,
    oline.pp_cost_collector_id,
    oline.m_promotion_id,
    oline.isconsumesforecast,
    oline.createfrom,
    oline.createshipment,
    st.qtyreserved AS qtyreservedtotal,
    st.qtyonhand AS qtyonhandtotal,
    st.qtyordered AS qtyorderedtotal,
    oline.qtyreserved AS qtytodeliver,
    COALESCE(ioldr.qtymovementdrafted, 0) AS qtymovementdrafted,
    oline.qtyordered - oline.qtyinvoiced AS qtyopentoinvoice,
    o.documentno,
    o.docstatus
FROM cordln oline
     JOIN c_order o ON oline.c_order_id = o.c_order_id
     LEFT JOIN ( SELECT sum(s.qtyonhand) AS qtyonhand,
            sum(s.qtyreserved) AS qtyreserved,
            s.m_product_id,
            l.m_warehouse_id,
            sum(s.qtyordered) AS qtyordered
           FROM m_storage s
             JOIN m_locator l ON s.m_locator_id = l.m_locator_id
          GROUP BY s.m_product_id, l.m_warehouse_id) st ON st.m_product_id = oline.m_product_id AND
		  o.m_warehouse_id = st.m_warehouse_id
     LEFT JOIN ( SELECT iol.c_orderline_id,
            sum(iol.movementqty) AS qtymovementdrafted
FROM mioln iol
FROM miolncfm iol
FROM miolnma iol
             JOIN m_inout io ON iol.m_inout_id = io.m_inout_id
          WHERE io.docstatus = ANY (ARRAY['DR', 'IP'])
          GROUP BY iol.c_orderline_id) ioldr ON oline.c_orderline_id = ioldr.c_orderline_id;

