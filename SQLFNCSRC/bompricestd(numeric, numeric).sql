-- Function: bompricestd(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bompricestd(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bompricestd(
    product_id DECFLOAT(34),
    pricelist_version_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
DECLARE
	v_Price		DECFLOAT(34);
	v_ProductPrice	DECFLOAT(34);
	bom		record;
BEGIN
	--	Try to get price from pricelist directly
	SELECT	COALESCE(SUM(PriceStd), 0)
	INTO	v_Price
   	FROM	M_PRODUCTPRICE
	WHERE M_PriceList_Version_ID=PriceList_Version_ID AND M_Product_ID=Product_ID;
--	DBMS_OUTPUT.PUT_LINE('Price=' || v_Price);

	--	No Price - Check if BOM
	IF (v_Price = 0) THEN
		FOR bom IN 		--	Get BOM Product info
		SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
		THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM 
		FROM PP_PRODUCT_BOM b
				INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
				INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = Product_ID  
		LOOP
			v_ProductPrice = Bompricestd (bom.M_ProductBOM_ID, PriceList_Version_ID);
			v_Price = v_Price + (bom.BOMQty * v_ProductPrice);
		--	DBMS_OUTPUT.PUT_LINE('Price=' || v_Price);
		END LOOP;	--	BOM
	END IF;
	--
	RETURN v_Price;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION bompricestd(DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
