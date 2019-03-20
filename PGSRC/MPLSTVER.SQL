-- Table: m_pricelist_version

-- DROP TABLE m_pricelist_version;

CREATE TABLE m_pricelist_version FOR SYSTEM NAME mplstver
(
  m_pricelist_version_id         FOR COLUMN m_plvid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0) NOT NULL,
  m_discountschema_id            FOR COLUMN m_dsid          DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  proccreate                                                CHAR(1),
  m_pricelist_version_base_id    FOR COLUMN m_plvbid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  createfrom                                                CHAR(1) DEFAULT NULL,
  CONSTRAINT m_pricelist_version_pkey PRIMARY KEY (m_pricelist_version_id),
  CONSTRAINT m_pricelist_version_isactive_check CHECK (isactive in ('Y','N'))
)
;

