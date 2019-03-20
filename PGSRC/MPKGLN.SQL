-- Table: m_packageline

-- DROP TABLE m_packageline;

CREATE TABLE m_packageline FOR SYSTEM NAME mpkgln
(
  m_packageline_id               FOR COLUMN m_pkglid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_package_id                   FOR COLUMN m_pkgid         DECIMAL(10,0) NOT NULL,
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_packageline_pkey PRIMARY KEY (m_packageline_id)
)
  ;
