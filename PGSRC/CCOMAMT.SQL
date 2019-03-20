-- Table: c_commissionamt

-- DROP TABLE c_commissionamt;

CREATE TABLE c_commissionamt FOR SYSTEM NAME ccomamt
(
  c_commissionamt_id             FOR COLUMN c_caid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_commissionrun_id             FOR COLUMN c_crid          DECIMAL(10,0) NOT NULL,
  c_commissionline_id            FOR COLUMN c_comlid        DECIMAL(10,0) NOT NULL,
  convertedamt                   FOR COLUMN cvtamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  actualqty                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  commissionamt                  FOR COLUMN comamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  percentage                                                DECFLOAT(16),
  maxpercentage                  FOR COLUMN maxpc           DECFLOAT(16),
  CONSTRAINT c_commissionamt_pkey PRIMARY KEY (c_commissionamt_id),
  CONSTRAINT c_commissionamt_isactive_check CHECK (isactive in ('Y','N'))
)
;

