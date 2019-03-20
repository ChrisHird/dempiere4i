-- Table: m_package

-- DROP TABLE m_package;

CREATE TABLE m_package
(
  m_package_id                   FOR COLUMN m_pkgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  m_inout_id                                                DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0) NOT NULL,
  trackinginfo                   FOR COLUMN tkginf          VARCHAR(255),
  datereceived                   FOR COLUMN datrcv          TIMESTAMP,
  receivedinfo                   FOR COLUMN rcvdinf         VARCHAR(255),
  shipdate                                                  TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_package_pkey PRIMARY KEY (m_package_id)
)
  ;
