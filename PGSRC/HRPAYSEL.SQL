-- Table: hr_payselection

-- DROP TABLE hr_payselection;

CREATE TABLE hr_payselection FOR SYSTEM NAME hrpaysel
(
  hr_payselection_id             FOR COLUMN hr_psid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0) NOT NULL,
  createfrom                                                CHAR(1) DEFAULT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isapproved                                                CHAR(1) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  paydat                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1) NOT NULL,
  totalamt                                                  DECFLOAT(16) NOT NULL,
  hr_process_id                  FOR COLUMN hr_prcid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_payselection_key PRIMARY KEY (hr_payselection_id),
  CONSTRAINT hr_payselection_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_payselection_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT hr_payselection_processed_check CHECK (processed in ('Y','N'))
)
;

