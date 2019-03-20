-- Table: r_issuestatus

-- DROP TABLE r_issuestatus;

CREATE TABLE r_issuestatus FOR SYSTEM NAME risssts
(
  r_issuestatus_id               FOR COLUMN r_issstsid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_issuestatus_pkey PRIMARY KEY (r_issuestatus_id),
  CONSTRAINT r_issuestatus_isactive_check CHECK (isactive in ('Y','N'))
)
;

