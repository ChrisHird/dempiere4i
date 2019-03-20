-- Table: ad_replicationdocument

-- DROP TABLE ad_replicationdocument;

CREATE TABLE ad_replicationdocument FOR SYSTEM NAME adrepdoc
(
  ad_replicationdocument_id      FOR COLUMN ad_repdid       DECIMAL(10,0) NOT NULL,
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  replicationtype                FOR COLUMN reptyp          CHAR(1) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replicationdocument_pkey PRIMARY KEY (ad_replicationdocument_id),
  CONSTRAINT ad_replicationdocument_isactive_check CHECK (isactive in ('Y','N'))
)
;

