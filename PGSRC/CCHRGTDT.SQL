-- Table: c_chargetype_doctype

-- DROP TABLE c_chargetype_doctype;

CREATE TABLE c_chargetype_doctype FOR SYSTEM NAME cchrgtdt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_chargetype_id                FOR COLUMN c_chrgtid       DECIMAL(10,0) NOT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isallownegative                FOR COLUMN isalwneg        CHAR(1) NOT NULL DEFAULT 'Y',
  isallowpositive                FOR COLUMN isalwpos        CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_chargetype_doctype_pkey PRIMARY KEY (c_chargetype_id, c_doctype_id),
  CONSTRAINT c_chargetype_doctype_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_chargetype_doctype_isallownegative_check CHECK (isallownegative in ('Y','N')),
  CONSTRAINT c_chargetype_doctype_isallowpositive_check CHECK (isallowpositive in ('Y','N'))
)
;

