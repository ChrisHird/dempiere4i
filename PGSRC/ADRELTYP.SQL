-- Table: ad_relationtype

-- DROP TABLE ad_relationtype;

CREATE TABLE ad_relationtype FOR SYSTEM NAME adreltyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_reference_source_id         FOR COLUMN ad_rfsrcid      DECIMAL(10,0),
  ad_reference_target_id         FOR COLUMN ad_rftgtid      DECIMAL(10,0),
  ad_relationtype_id             FOR COLUMN ad_reltyp       DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isdirected                                                CHAR(1) NOT NULL DEFAULT 'N',
  name                                                      VARCHAR(60) NOT NULL,
  role_source                    FOR COLUMN role_src        VARCHAR(50),
  role_target                    FOR COLUMN role_tgt        VARCHAR(50),
  type                                                      CHAR(1) NOT NULL DEFAULT 'I',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_relationtype_pkey PRIMARY KEY (ad_relationtype_id),
  CONSTRAINT ad_relationtype_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_relationtype_isdirected_check CHECK (isdirected in ('Y','N'))
)
;

