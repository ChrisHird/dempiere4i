-- Table: exp_processor_type

-- DROP TABLE exp_processor_type;

CREATE TABLE exp_processor_type FOR SYSTEM NAME expprctyp
(
  exp_processor_type_id          FOR COLUMN exp_prctid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  javaclass                                                 VARCHAR(255) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT exp_processor_type_pkey PRIMARY KEY (exp_processor_type_id),
  CONSTRAINT exp_processor_type_isactive_check CHECK (isactive in ('Y','N'))
)
;

