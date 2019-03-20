-- Table: ad_userquery

-- DROP TABLE ad_userquery;

CREATE TABLE ad_userquery FOR SYSTEM NAME adusrqry
(
  ad_userquery_id                FOR COLUMN ad_usrqyid     DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_user_id                                                DECIMAL(10,0),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  code                                                      VARCHAR(2000),
  ad_tab_id                                                 DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_userquery_pkey PRIMARY KEY (ad_userquery_id),
  CONSTRAINT ad_userquery_isactive_check CHECK (isactive in ('Y','N'))
)
;

