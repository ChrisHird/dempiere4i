-- Function: bompricelimit(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bompricelimit(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bompricelimit(
    p_product_id DECFLOAT(34),
    p_pricelist_version_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
DECLARE
	v_Price		DECFLOAT(34);
	v_ProductPrice	DECFLOAT(34);
	bom		record;
BEGIN
	--	Try to get price from PriceList directly
	SELECT	COALESCE (SUM(PriceLimit), 0)
        INTO	v_Price
   	FROM	M_PRODUCTPRICE
	WHERE M_PriceList_Version_ID=p_PriceList_Version_ID AND M_Product_ID=p_Product_ID;
	IF (v_Price = 0) THEN
		FOR bom in SELECT bl.M_Product_ID AS M_ProductBOM_ID, 
			CASE WHEN bl.IsQtyPercentage = 'N' THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM 
		FROM PP_PRODUCT_BOM b
		INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
		INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
		LOOP
			v_ProductPrice = Bompricelimit (bom.M_ProductBOM_ID, p_PriceList_Version_ID);
			v_Price = v_Price + (bom.BOMQty * v_ProductPrice);
		END LOOP;
	END IF;
	--
	RETURN v_Price;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION bompricelimit(DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
