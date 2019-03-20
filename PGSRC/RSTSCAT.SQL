-- Table: r_statuscategory

-- DROP TABLE r_statuscategory;

CREATE TABLE r_statuscategory FOR SYSTEM NAME rstscat
(
  r_statuscategory_id            FOR COLUMN r_stscid        DECIMAL(10,0) NOT NULL,
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
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_statuscategory_pkey PRIMARY KEY (r_statuscategory_id),
  CONSTRAINT r_statuscategory_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT r_statuscategory_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

