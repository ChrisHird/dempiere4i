-- Table: hr_listtype

-- DROP TABLE hr_listtype;

CREATE TABLE hr_listtype FOR SYSTEM NAME hrlsttyp
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_listtype_id                 FOR COLUMN hr_ltypid       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_listtype_pkey PRIMARY KEY (hr_listtype_id),
  CONSTRAINT hr_listtype_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_listtype_isactive_check CHECK (isactive in ('Y','N'))
)
;

