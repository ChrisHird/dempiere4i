-- Table: c_bp_withholding

-- DROP TABLE c_bp_withholding;

CREATE TABLE c_bp_withholding FOR SYSTEM NAME cbpwh
(
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_withholding_id               FOR COLUMN c_wid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ismandatorywithholding         FOR COLUMN ismandwh        CHAR(1) NOT NULL DEFAULT 'N',
  istemporaryexempt              FOR COLUMN istmpexmp       CHAR(1) NOT NULL DEFAULT 'N',
  exemptreason                   FOR COLUMN exmpr           VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_withholding_pkey PRIMARY KEY (c_bpartner_id, c_withholding_id),
  CONSTRAINT c_bp_withholding_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bp_withholding_ismandatorywithholding_check CHECK (ismandatorywithholding in ('Y','N')),
  CONSTRAINT c_bp_withholding_istemporaryexempt_check CHECK (istemporaryexempt in ('Y','N'))
)
;

