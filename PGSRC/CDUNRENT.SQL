-- Table: c_dunningrunentry

-- DROP TABLE c_dunningrunentry;

CREATE TABLE c_dunningrunentry FOR SYSTEM NAME cdunrent
(
  c_dunningrunentry_id           FOR COLUMN c_dreid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  c_dunningrun_id                FOR COLUMN c_drid          DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0) NOT NULL,
  amt                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  note                                                      VARCHAR(2000),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_dunninglevel_id              FOR COLUMN c_dlid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_dunningrunentry_pkey PRIMARY KEY (c_dunningrunentry_id),
  CONSTRAINT c_dunningrunentry_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_dunningrunentry_processed_check CHECK (processed in ('Y','N'))
)
;

