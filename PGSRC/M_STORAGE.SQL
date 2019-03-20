-- Table: m_storage

-- DROP TABLE m_storage;

CREATE TABLE m_storage
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  qtyonhand                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  qtyreserved                    FOR COLUMN qtyrsvd         DECFLOAT(16) NOT NULL DEFAULT 0,
  qtyordered                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  datelastinventory              FOR COLUMN datlstivt       TIMESTAMP,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_storage_pkey PRIMARY KEY (m_product_id, m_locator_id, m_attributesetinstance_id),
  CONSTRAINT m_storage_isactive_check CHECK (isactive in ('Y','N'))
)
;

