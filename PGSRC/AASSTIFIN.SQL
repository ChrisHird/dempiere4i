-- Table: a_asset_info_fin

-- DROP TABLE a_asset_info_fin;

CREATE TABLE a_asset_info_fin FOR SYSTEM NAME aasstifin
(
  a_asset_info_fin_id            FOR COLUMN a_ainffid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_due_on                                                  VARCHAR(22),
  a_finance_meth                 FOR COLUMN a_finm          VARCHAR(2),
  a_purchase_option              FOR COLUMN a_puropt        CHAR(1),
  a_purchase_option_credit_per   FOR COLUMN a_puroptcp      DECFLOAT(16),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  textmsg                                                   VARCHAR(510),
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_purchase_price               FOR COLUMN a_purprc        DECFLOAT(16),
  a_purchase_option_credit       FOR COLUMN a_purpptc       DECIMAL(10,0),
  a_monthly_payment              FOR COLUMN a_mpay          DECFLOAT(16),
  a_expired_date                 FOR COLUMN a_expdte        TIMESTAMP,
  a_contract_date                FOR COLUMN a_cntdt         TIMESTAMP,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  processed                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_info_fin_pkey PRIMARY KEY (a_asset_info_fin_id),
  CONSTRAINT a_asset_info_fin_a_purchase_option_check CHECK (a_purchase_option in ('Y','N')),
  CONSTRAINT a_asset_info_fin_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_asset_info_fin_processed_check CHECK (processed in ('Y','N'))
)
;

