-- Function: bomqtyavailableasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyavailableasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyavailableasi(
    product_id DECFLOAT(34),
    attributesetinstance_id DECFLOAT(34),
    warehouse_id DECFLOAT(34),
    locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
BEGIN
	RETURN bomQtyOnHandASI(Product_ID, AttributeSetInstance_ID, Warehouse_ID, Locator_ID) -
	       bomQtyReservedASI(Product_ID, AttributeSetInstance_ID, Warehouse_ID, Locator_ID);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION bomqtyavailableasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
