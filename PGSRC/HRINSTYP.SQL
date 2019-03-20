-- Table: hr_insurancetype

-- DROP TABLE hr_insurancetype;

CREATE TABLE hr_insurancetype FOR SYSTEM NAME hrinstyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_insurancetype_id            FOR COLUMN hr_instid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200) DEFAULT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_insurancetype_key PRIMARY KEY (hr_insurancetype_id),
  CONSTRAINT hr_insurancetype_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_insurancetype_isactive_check CHECK (isactive in ('Y','N'))
)
;

