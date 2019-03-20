-- Table: qm_specification

-- DROP TABLE qm_specification;

CREATE TABLE qm_specification FOR SYSTEM NAME qmsfn
(
  qm_specification_id            FOR COLUMN qm_specid       DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  name                                                      VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  m_attributeset_id              FOR COLUMN m_atsid         DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT qm_specification_pkey PRIMARY KEY (qm_specification_id),
  CONSTRAINT qm_specification_isactive_check CHECK (isactive in ('Y','N'))
)
;

