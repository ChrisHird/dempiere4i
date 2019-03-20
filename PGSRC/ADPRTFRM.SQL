-- Table: ad_printform

-- DROP TABLE ad_printform;

CREATE TABLE ad_printform FOR SYSTEM NAME adprtfrm
(
  ad_printform_id                FOR COLUMN ad_pfid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  invoice_printformat_id         FOR COLUMN invpfid         DECIMAL(10,0),
  order_printformat_id           FOR COLUMN ordpfid         DECIMAL(10,0),
  remittance_printformat_id      FOR COLUMN rempfid         DECIMAL(10,0),
  shipment_printformat_id        FOR COLUMN shppfid         DECIMAL(10,0),
  invoice_mailtext_id            FOR COLUMN invmtid         DECIMAL(10,0),
  order_mailtext_id              FOR COLUMN ordmtid         DECIMAL(10,0),
  remittance_mailtext_id         FOR COLUMN remmtid         DECIMAL(10,0),
  shipment_mailtext_id           FOR COLUMN shpmtid         DECIMAL(10,0),
  project_mailtext_id            FOR COLUMN prjmtid         DECIMAL(10,0),
  project_printformat_id         FOR COLUMN prjpfid         DECIMAL(10,0),
  manuf_order_mailtext_id        FOR COLUMN manuf_omid      DECIMAL(10,0),
  manuf_order_printformat_id     FOR COLUMN manuf_opid      DECIMAL(10,0),
  distrib_order_mailtext_id      FOR COLUMN dstromtid       DECIMAL(10,0),
  distrib_order_printformat_id   FOR COLUMN dstopfif        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printform_pkey PRIMARY KEY (ad_printform_id),
  CONSTRAINT ad_printform_isactive_check CHECK (isactive in ('Y','N'))
)
;

