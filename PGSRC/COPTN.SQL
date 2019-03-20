-- Table: c_opportunity

-- DROP TABLE c_opportunity;

CREATE TABLE c_opportunity FOR SYSTEM NAME coptn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_opportunity_id               FOR COLUMN c_opnid         DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(60) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  closedate                                                 TIMESTAMP,
  expectedclosedate              FOR COLUMN expcldte         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  opportunityamt                 FOR COLUMN oppyamt         DECFLOAT(16) NOT NULL,
  comments                                                  VARCHAR(2000),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  cost                                                      DECFLOAT(16),
  c_salesstage_id                FOR COLUMN c_slsstgid      DECIMAL(10,0) NOT NULL,
  probability                    FOR COLUMN problty         DECFLOAT(16) NOT NULL,
  c_order_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  CONSTRAINT c_opportunity_key PRIMARY KEY (c_opportunity_id),
  CONSTRAINT c_opportunity_isactive_check CHECK (isactive in ('Y','N'))
)
;

