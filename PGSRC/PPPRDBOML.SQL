-- Table: pp_product_bomline

-- DROP TABLE pp_product_bomline;

CREATE TABLE pp_product_bomline FOR SYSTEM NAME ppprdboml
(
  feature                                                   VARCHAR(30),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  assay                                                     DECFLOAT(16),
  backflushgroup                 FOR COLUMN bfgrp           VARCHAR(20),
  c_uom_id                                                  DECIMAL(10,0),
  componenttype                  FOR COLUMN cpntype         CHAR(2) DEFAULT 'CO',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  forecast                                                  DECFLOAT(16),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL,
  iscritical                                                CHAR(1) DEFAULT 'N',
  isqtypercentage                FOR COLUMN isqtypc         CHAR(1),
  issuemethod                    FOR COLUMN issuemthd       CHAR(1) NOT NULL DEFAULT '1',
  leadtimeoffset                 FOR COLUMN ltimeoff        DECIMAL(10,0),
  line                                                      DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_product_bomline_id          FOR COLUMN pp_pbomlid      DECIMAL(10,0) NOT NULL,
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0) NOT NULL,
  qtybom                                                    DECFLOAT(16),
  qtybatch                                                  DECFLOAT(16),
  scrap                                                     DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  validto                                                   TIMESTAMP,
  costallocationperc             FOR COLUMN cstalcperc      DECFLOAT(16) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_product_bomline_pkey PRIMARY KEY (pp_product_bomline_id),
  CONSTRAINT pp_product_bomline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_product_bomline_iscritical_check CHECK (iscritical in ('Y','N')),
  CONSTRAINT pp_product_bomline_isqtypercentage_check CHECK (isqtypercentage in ('Y','N'))
)
;

