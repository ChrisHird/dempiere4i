-- View: m_movementlinema_v

-- DROP VIEW m_movementlinema_v;

 SELECT m.ad_client_id,
    m.ad_org_id,
    m.isactive,
    m.created,
    m.createdby,
    m.updated,
    m.updatedby,
    l.m_movement_id,
    m.m_movementline_id,
    l.line,
    l.m_product_id,
    m.m_attributesetinstance_id,
    m.movementqty,
    l.m_locator_id,
    l.m_locatorto_id
FROM mmovlnma m
JOIN mmovln l ON m.m_movementline_id = l.m_movementline_id
JOIN mmovlncfm l ON m.m_movementline_id = l.m_movementline_id
JOIN mmovlnma l ON m.m_movementline_id = l.m_movementline_id
UNION
 SELECT m_movementline.ad_client_id,
    m_movementline.ad_org_id,
    m_movementline.isactive,
    m_movementline.created,
    m_movementline.createdby,
    m_movementline.updated,
    m_movementline.updatedby,
    m_movementline.m_movement_id,
    m_movementline.m_movementline_id,
    m_movementline.line,
    m_movementline.m_product_id,
    m_movementline.m_attributesetinstance_id,
    m_movementline.movementqty,
    m_movementline.m_locator_id,
    m_movementline.m_locatorto_id

