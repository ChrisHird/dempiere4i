-- Table: c_rfqlineqty

-- DROP TABLE c_rfqlineqty;

CREATE TABLE c_rfqlineqty FOR SYSTEM NAME crfqlq
(
  c_rfqlineqty_id                FOR COLUMN c_rqlqid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfqline_id                   FOR COLUMN c_rqlid         DECIMAL(10,0) NOT NULL,
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  margin                                                    DECFLOAT(16),
  ispurchaseqty                  FOR COLUMN isprchqty       CHAR(1) NOT NULL DEFAULT 'N',
  bestresponseamt                FOR COLUMN brespamt        DECFLOAT(16) DEFAULT 0,
  isofferqty                                                CHAR(1) NOT NULL DEFAULT 'N',
  offeramt                                                  DECFLOAT(16) DEFAULT 0,
  benchmarkprice                 FOR COLUMN bmkprc          DECFLOAT(16) NOT NULL DEFAULT 0,
  isrfqqty                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfqlineqty_pkey PRIMARY KEY (c_rfqlineqty_id),
  CONSTRAINT c_rfqlineqty_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_rfqlineqty_isofferqty_check CHECK (isofferqty in ('Y','N')),
  CONSTRAINT c_rfqlineqty_ispurchaseqty_check CHECK (ispurchaseqty in ('Y','N'))
)
;

