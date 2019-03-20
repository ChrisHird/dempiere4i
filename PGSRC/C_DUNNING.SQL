-- Table: c_dunning

-- DROP TABLE c_dunning;

CREATE TABLE c_dunning
(
  c_dunning_id                   FOR COLUMN c_did           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  senddunningletter              FOR COLUMN snddunltr       CHAR(1) NOT NULL DEFAULT 'Y',
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  createlevelssequentially       FOR COLUMN crtlvlseq       CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_dunning_pkey PRIMARY KEY (c_dunning_id),
  CONSTRAINT c_dunning_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_dunning_senddunningletter_check CHECK (senddunningletter in ('Y','N'))
)
;

