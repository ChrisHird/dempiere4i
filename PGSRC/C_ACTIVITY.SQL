-- Table: c_activity

-- DROP TABLE c_activity;

CREATE TABLE c_activity
(
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0) NOT NULL,
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
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  help                                                      VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_activity_pkey PRIMARY KEY (c_activity_id),
  CONSTRAINT c_activity_isactive_check CHECK (isactive in ('Y','N'))
)
;

