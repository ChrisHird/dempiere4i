-- Table: m_costtype

-- DROP TABLE m_costtype;

CREATE TABLE m_costtype
(
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  costingmethod                  FOR COLUMN cstmthd         CHAR(1) NOT NULL DEFAULT 'S',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_costtype_pkey PRIMARY KEY (m_costtype_id),
  CONSTRAINT m_costtype_isactive_check CHECK (isactive in ('Y','N'))
)
;

