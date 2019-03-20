-- Table: m_changerequest

-- DROP TABLE m_changerequest;

CREATE TABLE m_changerequest FOR SYSTEM NAME mchgreq
(
  m_changerequest_id             FOR COLUMN m_chgreqid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  documentno                                                VARCHAR(30) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  detailinfo                                                CLOB,
  m_fixchangenotice_id           FOR COLUMN m_fchgnid       DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_changerequest_pkey PRIMARY KEY (m_changerequest_id),
  CONSTRAINT m_changerequest_isactive_check CHECK (isactive in ('Y','N'))
)
;

