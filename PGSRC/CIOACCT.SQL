-- Table: c_interorg_acct

-- DROP TABLE c_interorg_acct;

CREATE TABLE c_interorg_acct FOR SYSTEM NAME cioacct
(
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_orgto_id                    FOR COLUMN as_otoid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  intercompanydueto_acct         FOR COLUMN intdta          DECIMAL(10,0) NOT NULL,
  intercompanyduefrom_acct       FOR COLUMN intdfa          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_interorg_acct_pkey PRIMARY KEY (c_acctschema_id, ad_org_id, ad_orgto_id),
  CONSTRAINT c_interorg_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

