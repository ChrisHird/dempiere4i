-- Table: c_payschedule

-- DROP TABLE c_payschedule;

CREATE TABLE c_payschedule FOR SYSTEM NAME cpaysched
(
  c_payschedule_id               FOR COLUMN c_psid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0) NOT NULL,
  percentage                                                DECFLOAT(16) NOT NULL,
  netdays                                                   DECIMAL(10,0) NOT NULL,
  netday                                                    CHAR(1),
  discountdays                   FOR COLUMN dscday          DECIMAL(10,0) NOT NULL,
  discount                                                  DECFLOAT(16) NOT NULL,
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  gracedays                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_payschedule_pkey PRIMARY KEY (c_payschedule_id),
  CONSTRAINT c_payschedule_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_payschedule_isvalid_check CHECK (isvalid in ('Y','N'))
)
;

