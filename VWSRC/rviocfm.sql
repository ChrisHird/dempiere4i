-- View: rv_inoutconfirm

-- DROP VIEW rv_inoutconfirm;

 SELECT c.m_inoutconfirm_id,
    c.ad_client_id,
    c.ad_org_id,
    c.isactive,
    c.created,
    c.createdby,
    c.updated,
    c.updatedby,
    c.m_inout_id,
    c.documentno,
    c.confirmtype,
    c.isapproved,
    c.iscancelled,
    c.description,
    c.processing,
    c.processed,
    i.c_bpartner_id,
    i.c_bpartner_location_id,
    i.m_warehouse_id,
    i.c_order_id,
    i.issotrx
FROM miocfm c
     JOIN m_inout i ON c.m_inout_id = i.m_inout_id;

