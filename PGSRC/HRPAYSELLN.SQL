-- Table: hr_payselectionline

-- DROP TABLE hr_payselectionline;

CREATE TABLE hr_payselectionline FOR SYSTEM NAME hrpayselln
(
  hr_payselectionline_id         FOR COLUMN hr_pslid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_payselectioncheck_id        FOR COLUMN hr_pscid        DECIMAL(10,0),
  hr_payselection_id             FOR COLUMN hr_psid         DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  differenceamt                  FOR COLUMN difamt          DECFLOAT(16) NOT NULL,
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL,
  ismanual                                                  CHAR(1) NOT NULL,
  issotrx                                                   CHAR(1) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  openamt                                                   DECFLOAT(16) NOT NULL,
  payamt                                                    DECFLOAT(16) NOT NULL,
  paymentrule                    FOR COLUMN payrule         CHAR(1) NOT NULL DEFAULT 'S',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  hr_movement_id                 FOR COLUMN hr_movid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_payselectionline_key PRIMARY KEY (hr_payselectionline_id),
  CONSTRAINT hr_payselectionline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_payselectionline_ismanual_check CHECK (ismanual in ('Y','N')),
  CONSTRAINT hr_payselectionline_issotrx_check CHECK (issotrx in ('Y','N')),
  CONSTRAINT hr_payselectionline_processed_check CHECK (processed in ('Y','N'))
)
;

