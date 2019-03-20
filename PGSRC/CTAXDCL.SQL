-- Table: c_taxdeclaration

-- DROP TABLE c_taxdeclaration;

CREATE TABLE c_taxdeclaration FOR SYSTEM NAME ctaxdcl
(
  c_taxdeclaration_id            FOR COLUMN c_txdid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  datetrx                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  datefrom                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateto                                                     TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxdeclaration_pkey PRIMARY KEY (c_taxdeclaration_id),
  CONSTRAINT c_taxdeclaration_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_taxdeclaration_processed_check CHECK (processed in ('Y','N'))
)
;

