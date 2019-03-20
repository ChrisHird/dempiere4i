-- Table: ad_memo

-- DROP TABLE ad_memo;

CREATE TABLE ad_memo
(
  ad_memo_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  record_id                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  comments                                                  CLOB,
  ad_user_id                                                DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  isalert                                                   CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_memo_key PRIMARY KEY (ad_memo_id),
  CONSTRAINT ad_memo_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_memo_isalert_check CHECK (isalert in ('Y','N'))
)
;

