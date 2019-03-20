-- Function: bomqtyreservedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- DECFLOAT(34))

-- DROP FUNCTION bomqtyreservedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyreservedasi(
    p_product_id DECFLOAT(34),
    attributesetinstance_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34),
    p_locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
DECLARE
	v_Warehouse_ID		DECFLOAT(34);
 	v_Quantity		DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		DECFLOAT(34);
	v_StdPrecision		int;
	bom 			record;
	--
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		IF (p_Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	MAX(M_Warehouse_ID) INTO v_Warehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=p_Locator_ID;
		END IF;
	END IF;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN 0;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyReserved), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE M_Product_ID=p_Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID)
		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
		  OR COALESCE(AttributeSetInstance_ID,0) = 0);
		--
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN 
	--Get BOM Product info
	SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
	THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get ProductQty
			SELECT 	COALESCE(SUM(QtyReserved), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE 	M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=v_Warehouse_ID)
		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
		  OR COALESCE(AttributeSetInstance_ID,0) = 0);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = BomqtyreservedASI (bom.M_ProductBOM_ID, AttributeSetInstance_ID, 
			v_Warehouse_ID, p_Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision );
	END IF;
	RETURN 0;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION bomqtyreservedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
