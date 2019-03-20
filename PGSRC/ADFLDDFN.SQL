-- Table: ad_fielddefinition

-- DROP TABLE ad_fielddefinition;

CREATE TABLE ad_fielddefinition FOR SYSTEM NAME adflddfn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_fielddefinition_id          FOR COLUMN ad_fdefid       DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  CONSTRAINT ad_fielddefinition_key PRIMARY KEY (ad_fielddefinition_id),
  CONSTRAINT ad_fielddefinition_isactive_check CHECK (isactive in ('Y','N'))
)
;

