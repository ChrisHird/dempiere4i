-- View: rv_inoutlineconfirm

-- DROP VIEW rv_inoutlineconfirm;

 SELECT cl.m_inoutconfirm_id,
    cl.m_inoutlineconfirm_id,
    cl.ad_client_id,
    cl.ad_org_id,
    cl.isactive,
    cl.created,
    cl.createdby,
    cl.updated,
    cl.updatedby,
    cl.targetqty,
    cl.confirmedqty,
    cl.differenceqty,
    cl.scrappedqty,
    cl.description,
    cl.processed,
    c.m_inout_id,
    c.documentno,
    c.confirmtype,
    c.isapproved,
    c.iscancelled,
    i.c_bpartner_id,
    i.c_bpartner_location_id,
    i.m_warehouse_id,
    i.c_order_id,
    i.issotrx,
    cl.m_inoutline_id,
    il.m_product_id,
    il.m_attributesetinstance_id,
    il.m_locator_id
FROM miolncfm cl
JOIN miocfm c ON cl.m_inoutconfirm_id = c.m_inoutconfirm_id
     JOIN m_inout i ON c.m_inout_id = i.m_inout_id
JOIN mioln il ON cl.m_inoutline_id = il.m_inoutline_id;
JOIN miolncfm il ON cl.m_inoutline_id = il.m_inoutline_id;
JOIN miolnma il ON cl.m_inoutline_id = il.m_inoutline_id;

