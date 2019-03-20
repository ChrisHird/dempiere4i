-- Table: hr_leavereason

-- DROP TABLE hr_leavereason;

CREATE TABLE hr_leavereason FOR SYSTEM NAME hrlrsn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_leavereason_id              FOR COLUMN hr_lrsnid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(100) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200),
  leavereasontype                FOR COLUMN lvrsntyp        VARCHAR(4) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_leavereason_key PRIMARY KEY (hr_leavereason_id),
  CONSTRAINT hr_leavereason_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_leavereason_isactive_check CHECK (isactive in ('Y','N'))
)
;

