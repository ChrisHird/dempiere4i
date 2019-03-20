-- View: m_inoutlinema_v

-- DROP VIEW m_inoutlinema_v;

 SELECT m.ad_client_id,
    m.ad_org_id,
    m.isactive,
    m.created,
    m.createdby,
    m.updated,
    m.updatedby,
    l.m_inout_id,
    m.m_inoutline_id,
    l.line,
    l.m_product_id,
    m.m_attributesetinstance_id,
    m.movementqty,
    l.m_locator_id
FROM miolnma m
JOIN mioln l ON m.m_inoutline_id = l.m_inoutline_id
JOIN miolncfm l ON m.m_inoutline_id = l.m_inoutline_id
JOIN miolnma l ON m.m_inoutline_id = l.m_inoutline_id
UNION
 SELECT m_inoutline.ad_client_id,
    m_inoutline.ad_org_id,
    m_inoutline.isactive,
    m_inoutline.created,
    m_inoutline.createdby,
    m_inoutline.updated,
    m_inoutline.updatedby,
    m_inoutline.m_inout_id,
    m_inoutline.m_inoutline_id,
    m_inoutline.line,
    m_inoutline.m_product_id,
    m_inoutline.m_attributesetinstance_id,
    m_inoutline.movementqty,
    m_inoutline.m_locator_id

