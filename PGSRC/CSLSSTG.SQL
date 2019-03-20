-- Table: c_salesstage

-- DROP TABLE c_salesstage;

CREATE TABLE c_salesstage FOR SYSTEM NAME cslsstg
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_salesstage_id                FOR COLUMN c_slsstgid      DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  probability                    FOR COLUMN problty         DECFLOAT(16) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  isclosed                                                  CHAR(1) NOT NULL DEFAULT 'N',
  iswon                                                     CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_salesstage_key PRIMARY KEY (c_salesstage_id),
  CONSTRAINT c_salesstage_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_salesstage_isclosed_check CHECK (isclosed in ('Y','N')),
  CONSTRAINT c_salesstage_iswon_check CHECK (iswon in ('Y','N'))
)
;

