-- Table: c_dunninglevel_trl

-- DROP TABLE c_dunninglevel_trl;

CREATE TABLE c_dunninglevel_trl FOR SYSTEM NAME cdunlvlt
(
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  c_dunninglevel_id              FOR COLUMN c_dlid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  printname                                                 VARCHAR(60) NOT NULL,
  note                                                      VARCHAR(2000),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_dunninglevel_trl_pkey PRIMARY KEY (ad_language, c_dunninglevel_id),
  CONSTRAINT c_dunninglevel_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_dunninglevel_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

