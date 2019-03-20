-- Table: c_bankaccountdoc

-- DROP TABLE c_bankaccountdoc;

CREATE TABLE c_bankaccountdoc FOR SYSTEM NAME cbnkadoc
(
  c_bankaccountdoc_id            FOR COLUMN c_badid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  paymentrule                    FOR COLUMN payrule         CHAR(1) NOT NULL,
  currentnext                    FOR COLUMN curnxt          DECIMAL(10,0) NOT NULL,
  check_printformat_id           FOR COLUMN chprtfmtid      DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bankaccountdoc_pkey PRIMARY KEY (c_bankaccountdoc_id),
  CONSTRAINT c_bankaccountdoc_isactive_check CHECK (isactive in ('Y','N'))
)
;

