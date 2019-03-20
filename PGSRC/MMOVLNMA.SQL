-- Table: m_movementlinema

-- DROP TABLE m_movementlinema;

CREATE TABLE m_movementlinema FOR SYSTEM NAME mmovlnma
(
  m_movementline_id              FOR COLUMN m_mlid          DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_movementlinema_pkey PRIMARY KEY (m_movementline_id, m_attributesetinstance_id),
  CONSTRAINT m_movementlinema_isactive_check CHECK (isactive in ('Y','N'))
)
;

