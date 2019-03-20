-- Table: m_costelement

-- DROP TABLE m_costelement;

CREATE TABLE m_costelement FOR SYSTEM NAME mcstelm
(
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  costelementtype                FOR COLUMN cstelmtyp       CHAR(1) NOT NULL,
  costingmethod                  FOR COLUMN cstmthd         CHAR(1),
  iscalculated                   FOR COLUMN iscalc          CHAR(1) NOT NULL DEFAULT 'N',
  isdefault                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_costelement_pkey PRIMARY KEY (m_costelement_id),
  CONSTRAINT m_costelement_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_costelement_iscalculated_check CHECK (iscalculated in ('Y','N')),
  CONSTRAINT m_costelement_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

