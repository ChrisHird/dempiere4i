-- Table: hr_listversion

-- DROP TABLE hr_listversion;

CREATE TABLE hr_listversion FOR SYSTEM NAME hrlstver
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_listbase_id                 FOR COLUMN hr_lbaseid      DECIMAL(10,0),
  hr_listversion_id              FOR COLUMN hr_lstvid       DECIMAL(10,0) NOT NULL,
  hr_list_id                                                DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  validt                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_listversion_pkey PRIMARY KEY (hr_listversion_id),
  CONSTRAINT hr_listversion_isactive_check CHECK (isactive in ('Y','N'))
)
;

