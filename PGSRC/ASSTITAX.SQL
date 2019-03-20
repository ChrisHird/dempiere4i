-- Table: a_asset_info_tax

-- DROP TABLE a_asset_info_tax;

CREATE TABLE a_asset_info_tax FOR SYSTEM NAME asstitax
(
  a_asset_info_tax_id            FOR COLUMN a_ainftxid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_investment_cr                FOR COLUMN a_ivmcr         DECIMAL(10,0),
  a_state                                                   VARCHAR(60),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  textmsg                                                   VARCHAR(510),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  a_tax_entity                   FOR COLUMN a_taxe          VARCHAR(22),
  a_new_used                                                CHAR(1),
  a_finance_meth                 FOR COLUMN a_finm          VARCHAR(2),
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_info_tax_pkey PRIMARY KEY (a_asset_info_tax_id),
  CONSTRAINT a_asset_info_tax_a_new_used_check CHECK (a_new_used in ('Y','N')),
  CONSTRAINT a_asset_info_tax_isactive_check CHECK (isactive in ('Y','N'))
)
;

