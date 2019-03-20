-- View: m_inoutconfirm_v

-- DROP VIEW m_inoutconfirm_v;

 SELECT ioc.ad_client_id,
    ioc.ad_org_id,
    ioc.isactive,
    ioc.created,
    ioc.createdby,
    ioc.updated,
    ioc.updatedby,
    'en_US' AS ad_language,
    ioc.m_inoutconfirm_id,
    ioc.documentno,
    ioc.confirmtype,
    ioc.isapproved,
    ioc.iscancelled,
    ioc.description,
    io.m_inout_id,
    io.description AS shipdescription,
    io.c_bpartner_id,
    io.c_bpartner_location_id,
    io.ad_user_id,
    io.salesrep_id,
    io.c_doctype_id,
    dt.printname AS documenttype,
    io.c_order_id,
    io.dateordered,
    io.movementdate,
    io.movementtype,
    io.m_warehouse_id,
    io.poreference,
    io.deliveryrule,
    io.freightcostrule,
    io.deliveryviarule,
    io.m_shipper_id,
    io.priorityrule,
    ioc.processed
FROM miocfm ioc
     JOIN m_inout io ON ioc.m_inout_id = io.m_inout_id
     JOIN c_doctype dt ON io.c_doctype_id = dt.c_doctype_id;

