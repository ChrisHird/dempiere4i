-- Table: c_invoiceschedule

-- DROP TABLE c_invoiceschedule;

CREATE TABLE c_invoiceschedule FOR SYSTEM NAME cinvsch
(
  c_invoiceschedule_id           FOR COLUMN c_isid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isamount                                                  CHAR(1) NOT NULL DEFAULT 'N',
  amt                                                       DECFLOAT(16) DEFAULT 0,
  invoicefrequency               FOR COLUMN invfreq         CHAR(1) NOT NULL,
  invoiceweekday                 FOR COLUMN invwd           CHAR(1),
  invoiceweekdaycutoff           FOR COLUMN invwdco         CHAR(1),
  eveninvoiceweek                FOR COLUMN enfinvwk        CHAR(1) DEFAULT 'Y',
  invoiceday                                                DECIMAL(10,0),
  invoicedaycutoff               FOR COLUMN invdco          DECIMAL(10,0),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_invoiceschedule_pkey PRIMARY KEY (c_invoiceschedule_id),
  CONSTRAINT c_invoiceschedule_eveninvoiceweek_check CHECK (eveninvoiceweek in ('Y','N')),
  CONSTRAINT c_invoiceschedule_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_invoiceschedule_isamount_check CHECK (isamount in ('Y','N'))
)
;

