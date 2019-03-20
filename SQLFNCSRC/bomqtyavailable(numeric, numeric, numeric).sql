-- Function: bomqtyavailable(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyavailable(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyavailable(
    product_id DECFLOAT(34),
    warehouse_id DECFLOAT(34),
    locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
BEGIN
	RETURN bomQtyOnHand(Product_ID, Warehouse_ID, Locator_ID) - bomQtyReserved(Product_ID, Warehouse_ID, Locator_ID);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION bomqtyavailable(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
