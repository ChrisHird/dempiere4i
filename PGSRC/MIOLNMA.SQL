-- Table: m_inoutlinema

-- DROP TABLE m_inoutlinema;

CREATE TABLE m_inoutlinema FOR SYSTEM NAME miolnma
(
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_inoutlinema_pkey PRIMARY KEY (m_inoutline_id, m_attributesetinstance_id),
  CONSTRAINT m_inoutlinema_isactive_check CHECK (isactive in ('Y','N'))
)
;

