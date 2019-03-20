-- Table: ad_attribute

-- DROP TABLE ad_attribute;

CREATE TABLE ad_attribute FOR SYSTEM NAME adattr
(
  ad_attribute_id                FOR COLUMN ad_atrid        DECIMAL(10,0) NOT NULL,
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
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
  ad_reference_value_id          FOR COLUMN ad_rvid         DECIMAL(10,0),
  ad_val_rule_id                 FOR COLUMN ad_vrid         DECIMAL(10,0),
  callout                                                   VARCHAR(60),
  valuemin                                                  VARCHAR(20),
  valuemax                                                  VARCHAR(20),
  defaultvalue                   FOR COLUMN dftval          VARCHAR(2000),
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  isupdateable                   FOR COLUMN isupdtbl        CHAR(1) NOT NULL DEFAULT 'Y',
  ismandatory                    FOR COLUMN ismand          CHAR(1) NOT NULL DEFAULT 'N',
  isencrypted                    FOR COLUMN isencrpt        CHAR(1) NOT NULL DEFAULT 'N',
  fieldlength                    FOR COLUMN fldlen          DECIMAL(10,0),
  displaylength                  FOR COLUMN dsplen          DECIMAL(10,0),
  displaylogic                   FOR COLUMN dsplgc          VARCHAR(2000),
  vformat                                                   VARCHAR(60),
  issameline                                                CHAR(1) NOT NULL DEFAULT 'N',
  isheading                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isfieldonly                    FOR COLUMN isfldonly       CHAR(1) NOT NULL DEFAULT 'N',
  seqno                                                     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_attribute_pkey PRIMARY KEY (ad_attribute_id),
  CONSTRAINT ad_attribute_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_attribute_isencrypted_check CHECK (isencrypted in ('Y','N')),
  CONSTRAINT ad_attribute_isfieldonly_check CHECK (isfieldonly in ('Y','N')),
  CONSTRAINT ad_attribute_isheading_check CHECK (isheading in ('Y','N')),
  CONSTRAINT ad_attribute_ismandatory_check CHECK (ismandatory in ('Y','N')),
  CONSTRAINT ad_attribute_isreadonly_check CHECK (isreadonly in ('Y','N')),
  CONSTRAINT ad_attribute_issameline_check CHECK (issameline in ('Y','N')),
  CONSTRAINT ad_attribute_isupdateable_check CHECK (isupdateable in ('Y','N'))
)
;

