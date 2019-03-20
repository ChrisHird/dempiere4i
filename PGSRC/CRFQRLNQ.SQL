-- Table: c_rfqresponselineqty

-- DROP TABLE c_rfqresponselineqty;

CREATE TABLE c_rfqresponselineqty FOR SYSTEM NAME crfqrlnq
(
  c_rfqresponselineqty_id        FOR COLUMN c_rqrlqid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfqresponseline_id           FOR COLUMN c_rqrlid        DECIMAL(10,0) NOT NULL,
  c_rfqlineqty_id                FOR COLUMN c_rqlqid        DECIMAL(10,0) NOT NULL,
  price                                                     DECFLOAT(16) NOT NULL DEFAULT 0,
  discount                                                  DECFLOAT(16),
  ranking                                                   DECIMAL(10,0) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfqresponselineqty_pkey PRIMARY KEY (c_rfqresponselineqty_id),
  CONSTRAINT c_rfqresponselineqty_isactive_check CHECK (isactive in ('Y','N'))
)
;

