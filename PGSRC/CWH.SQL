-- Table: c_withholding

-- DROP TABLE c_withholding;

CREATE TABLE c_withholding FOR SYSTEM NAME cwh
(
  c_withholding_id               FOR COLUMN c_wid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0) NOT NULL,
  istaxwithholding               FOR COLUMN istxwh          CHAR(1) NOT NULL DEFAULT 'Y',
  istaxprorated                  FOR COLUMN istxprrtd       CHAR(1) NOT NULL DEFAULT 'N',
  ispaidto3party                 FOR COLUMN ispd3pty        CHAR(1) NOT NULL DEFAULT 'Y',
  beneficiary                    FOR COLUMN benef           DECIMAL(10,0),
  ispercentwithholding           FOR COLUMN ispcwh          CHAR(1) NOT NULL DEFAULT 'Y',
  percent                                                   DECFLOAT(16) DEFAULT 0,
  fixamt                                                    DECFLOAT(16) DEFAULT 0,
  thresholdmin                   FOR COLUMN thldmin         DECFLOAT(16) DEFAULT 0,
  thresholdmax                   FOR COLUMN thldmax         DECFLOAT(16) DEFAULT 0,
  minamt                                                    DECFLOAT(16) DEFAULT 0,
  maxamt                                                    DECFLOAT(16) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_withholding_pkey PRIMARY KEY (c_withholding_id),
  CONSTRAINT c_withholding_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_withholding_ispaidto3party_check CHECK (ispaidto3party in ('Y','N')),
  CONSTRAINT c_withholding_ispercentwithholding_check CHECK (ispercentwithholding in ('Y','N')),
  CONSTRAINT c_withholding_istaxprorated_check CHECK (istaxprorated in ('Y','N')),
  CONSTRAINT c_withholding_istaxwithholding_check CHECK (istaxwithholding in ('Y','N'))
)
;

