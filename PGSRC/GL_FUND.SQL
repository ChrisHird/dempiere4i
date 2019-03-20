-- Table: gl_fund

-- DROP TABLE gl_fund;

CREATE TABLE gl_fund
(
  gl_fund_id                                                DECIMAL(10,0) NOT NULL,
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
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  amt                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  datefrom                                                  TIMESTAMP,
  dateto                                                    TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_fund_pkey PRIMARY KEY (gl_fund_id),
  CONSTRAINT gl_fund_isactive_check CHECK (isactive in ('Y','N'))
)
;

