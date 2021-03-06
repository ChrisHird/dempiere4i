-- Table: cm_webproject_domain

-- DROP TABLE cm_webproject_domain;

CREATE TABLE cm_webproject_domain FOR SYSTEM NAME cmwprjdom
(
  cm_webproject_domain_id        FOR COLUMN cm_wprjdid      DECIMAL(10,0) NOT NULL,
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
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0) NOT NULL,
  cm_container_id                FOR COLUMN cm_cntid        DECIMAL(10,0),
  fqdn                                                      VARCHAR(120) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_webproject_domain_pkey PRIMARY KEY (cm_webproject_domain_id),
  CONSTRAINT cm_webproject_domain_isactive_check CHECK (isactive in ('Y','N'))
)
;

