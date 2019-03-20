-- Table: a_asset_delivery

-- DROP TABLE a_asset_delivery;

CREATE TABLE a_asset_delivery FOR SYSTEM NAME aasstdel
(
  a_asset_delivery_id            FOR COLUMN a_adid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  movementdate                   FOR COLUMN movdat           TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  serno                                                     VARCHAR(40),
  lot                                                       VARCHAR(40),
  versionno                                                 VARCHAR(20),
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  email                                                     VARCHAR(60),
  messageid                                                 VARCHAR(120),
  deliveryconfirmation           FOR COLUMN dcfm            VARCHAR(120),
  url                                                       VARCHAR(120),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  remote_host                    FOR COLUMN rmthost         VARCHAR(60),
  referrer                                                  VARCHAR(255),
  ad_user_id                                                DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  m_productdownload_id           FOR COLUMN m_pdwnlid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_delivery_pkey PRIMARY KEY (a_asset_delivery_id),
  CONSTRAINT a_asset_delivery_isactive_check CHECK (isactive in ('Y','N'))
)
;

