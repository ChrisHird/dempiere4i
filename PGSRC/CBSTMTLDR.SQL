-- Table: c_bankstatementloader

-- DROP TABLE c_bankstatementloader;

CREATE TABLE c_bankstatementloader FOR SYSTEM NAME cbstmtldr
(
  c_bankstatementloader_id       FOR COLUMN c_bslid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0) NOT NULL,
  stmtloaderclass                FOR COLUMN stmldrc         VARCHAR(60),
  financialinstitutionid         FOR COLUMN fiid            VARCHAR(20),
  branchid                                                  VARCHAR(20),
  userid                                                    VARCHAR(60),
  password                                                  VARCHAR(60),
  pin                                                       VARCHAR(20),
  accountno                                                 VARCHAR(20),
  hostaddress                    FOR COLUMN hostaddr        VARCHAR(60),
  hostport                                                  DECIMAL(10,0),
  proxyaddress                   FOR COLUMN pxyaddr         VARCHAR(60),
  proxyport                                                 DECIMAL(10,0),
  proxylogon                                                VARCHAR(60),
  proxypassword                  FOR COLUMN pxypwd          VARCHAR(60),
  filename                                                  VARCHAR(120),
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  dateformat                                                VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bankstatementloader_pkey PRIMARY KEY (c_bankstatementloader_id),
  CONSTRAINT c_bankstatementloader_isactive_check CHECK (isactive in ('Y','N'))
)
;

