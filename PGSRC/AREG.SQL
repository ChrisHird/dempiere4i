-- Table: a_registration

-- DROP TABLE a_registration;

CREATE TABLE a_registration FOR SYSTEM NAME areg
(
  a_registration_id              FOR COLUMN a_rid           DECIMAL(10,0) NOT NULL,
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
  a_asset_id                                                DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  isregistered                   FOR COLUMN isreg           CHAR(1) NOT NULL DEFAULT 'N',
  isinproduction                 FOR COLUMN isinprod        CHAR(1) NOT NULL DEFAULT 'N',
  isallowpublish                 FOR COLUMN isalwpub        CHAR(1) NOT NULL DEFAULT 'Y',
  remote_host                    FOR COLUMN rmthost         VARCHAR(120),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  processing                                                CHAR(1),
  assetservicedate               FOR COLUMN asd             TIMESTAMP,
  note                                                      VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_registration_pkey PRIMARY KEY (a_registration_id),
  CONSTRAINT a_registration_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_registration_isallowpublish_check CHECK (isallowpublish in ('Y','N')),
  CONSTRAINT a_registration_isinproduction_check CHECK (isinproduction in ('Y','N')),
  CONSTRAINT a_registration_isregistered_check CHECK (isregistered in ('Y','N'))
)
;

