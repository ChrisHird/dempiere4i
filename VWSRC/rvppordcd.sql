-- View: rv_pp_order_costdetail

-- DROP VIEW rv_pp_order_costdetail;

 SELECT o.ad_client_id,
    o.ad_org_id,
    obl.pp_order_id,
    obl.m_product_id,
    oc.m_costtype_id,
    oc.m_costelement_id,
    oc.c_acctschema_id,
        CASE
            WHEN obl.isqtypercentage = 'Y' THEN obl.qtybatch
            ELSE obl.qtybom
        END AS qty,
    obl.qtyrequired,
    oc.currentcostprice,
    oc.currentcostpricell,
    obl.qtyrequired * oc.currentcostprice AS expectedcost,
    obl.qtyrequired * oc.currentcostpricell AS expectedcostll,
    abs(COALESCE(( SELECT sum(cd.qty) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '110'), 0)) AS cumulatedqty,
    abs(COALESCE(( SELECT sum(cd.amt) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '110'), 0)) AS cumulatedamt,
    abs(COALESCE(( SELECT sum(cd.amtll) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '110'), 0)) AS cumulatedamtll,
    abs(COALESCE(( SELECT sum(cd.amt + cd.amtll) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '120'), 0)) AS usagevariance,
    abs(COALESCE(( SELECT sum(cd.amtll) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '130'), 0)) AS methodchangevariance,
    abs(COALESCE(( SELECT sum(cd.amt + cd.amtll) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '140'), 0)) AS ratevariance,
    abs(COALESCE(( SELECT sum(cd.amt + cd.amtll) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id AND cc.costcollectortype = '150'), 0)) AS mixvariance,
    abs(COALESCE(( SELECT sum(cd.amt) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id), 0)) AS amt,
    abs(COALESCE(( SELECT sum(cd.amtll) AS sum
FROM mcstdet cd
JOIN ppcstcol cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
JOIN ppcstcolrm cc ON cd.pp_cost_collector_id = cc.pp_cost_collector_id AND cd.m_product_id = cc.m_product_id
          WHERE cc.pp_order_id = o.pp_order_id AND cd.m_product_id = obl.m_product_id AND 
		  cd.m_costtype_id = oc.m_costtype_id AND cd.m_costelement_id = oc.m_costelement_id AND 
		  cd.c_acctschema_id = oc.c_acctschema_id), 0)) AS amtll
FROM ppordboml obl
FROM ppordbomlt obl
     JOIN pp_order o ON obl.pp_order_id = o.pp_order_id
JOIN ppordcst oc ON o.pp_order_id = oc.pp_order_id AND obl.m_product_id = oc.m_product_id;

