-- View: rv_m_transaction_costing

-- DROP VIEW rv_m_transaction_costing;

 SELECT t.m_transaction_id,
    t.ad_client_id,
    t.ad_org_id,
    t.movementtype,
    t.movementdate,
    t.movementqty,
    t.m_attributesetinstance_id,
    t.m_attributeset_id,
    t.serno,
    t.lot,
    t.m_lot_id,
    t.guaranteedate,
    t.m_product_id,
    p.value,
    p.name,
    p.description,
    p.upc,
    p.sku,
    p.c_uom_id,
    p.m_product_category_id,
    p.classification,
    p.group1,
    p.group2,
    p.weight,
    p.volume,
    p.versionno,
    t.documentno,
    t.c_doctype_id,
    t.m_locator_id,
    t.x,
    t.y,
    t.z,
    t.m_warehouse_id,
    t.m_inventoryline_id,
    t.m_inventory_id,
    t.m_movementline_id,
    t.m_movement_id,
    t.m_inoutline_id,
    t.m_inout_id,
    t.m_productionline_id,
    t.m_productionplan_id,
    t.m_production_id,
    t.c_projectissue_id,
    t.pp_cost_collector_id,
    cd.c_landedcostallocation_id,
    cd.c_acctschema_id,
    cd.m_costtype_id,
    cd.m_costelement_id,
    cd.seqno,
    cd.costadjustmentdate,
    cd.costadjustmentdatell,
    cd.dateacct,
    cd.cumulatedqty AS beginningqtybalance,
    cd.currentcostprice,
    cd.currentcostpricell,
    cd.isreversal,
    cd.issotrx,
    cd.m_costdetail_id,
    cd.cumulatedamt + cd.cumulatedamtll AS beginningbalance,
    cd.qty,
        CASE
            WHEN cd.qty < 0 THEN cd.amt * '-1'
            ELSE cd.amt
        END AS amt,
        CASE
            WHEN cd.qty < 0 THEN cd.amtll * '-1'
            ELSE cd.amtll
        END AS amtll,
        CASE
            WHEN cd.qty < 0 THEN cd.costamt * '-1'
            ELSE cd.costamt
        END AS costamt,
        CASE
            WHEN cd.qty < 0 THEN cd.costamtll * '-1'
            ELSE cd.costamtll
        END AS costamtll,
        CASE
            WHEN cd.qty < 0 THEN cd.costadjustment * '-1'
            ELSE cd.costadjustment
        END AS costadjustment,
        CASE
            WHEN cd.qty < 0 THEN cd.costadjustmentll * '-1'
            ELSE cd.costadjustmentll
        END AS costadjustmentll,
    cd.cumulatedamt,
    cd.cumulatedamtll,
    cd.cumulatedqty + cd.qty AS endingqtybalance,
    cd.cumulatedamt + cd.cumulatedamtll +
        CASE
            WHEN cd.qty < 0 OR cd.qty = 0 AND cd.cumulatedqty < 0 THEN cd.costamt * '-1'
            ELSE cd.costamt
        END +
        CASE
            WHEN cd.qty < 0 OR cd.qty = 0 AND cd.cumulatedqty < 0 THEN cd.costamtll * '-1'
            ELSE cd.costamtll
        END +
        CASE
            WHEN cd.qty < 0 OR cd.qty = 0 AND cd.cumulatedqty < 0 THEN cd.costadjustment * '-1'
            ELSE cd.costadjustment
        END +
        CASE
            WHEN cd.qty < 0 OR cd.qty = 0 AND cd.cumulatedqty < 0 THEN cd.costadjustmentll * '-1'
            ELSE cd.costadjustmentll
        END AS endingbalance,
    t.c_project_id,
    t.c_activity_id,
    t.c_campaign_id,
    t.c_region_id,
    t.c_bpartner_id,
    t.user1_id,
    t.user2_id,
    t.user3_id,
    t.user4_id
   FROM m_product p
JOIN mcstdet cd ON cd.m_transaction_id = t.m_transaction_id AND cd.m_product_id = p.m_product_id
     LEFT JOIN m_costtype ct ON ct.m_costtype_id = cd.m_costtype_id
JOIN mcstelm ce ON ce.m_costelement_id = cd.m_costelement_id;

