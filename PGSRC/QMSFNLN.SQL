-- Table: qm_specificationline

-- DROP TABLE qm_specificationline;

CREATE TABLE qm_specificationline FOR SYSTEM NAME qmsfnln
(
  qm_specificationline_id        FOR COLUMN qm_speclid      DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  m_attribute_id                 FOR COLUMN m_aid           DECIMAL(10,0) NOT NULL,
  validfrom                                                 VARCHAR(22),
  validto                                                   TIMESTAMP,
  andor                                                     CHAR(1) NOT NULL,
  value                                                     VARCHAR(40),
  operation                                                 CHAR(2) NOT NULL,
  qm_specification_id            FOR COLUMN qm_specid       DECIMAL(10,0),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT qm_specificationline_pkey PRIMARY KEY (qm_specificationline_id),
  CONSTRAINT qm_specificationline_isactive_check CHECK (isactive in ('Y','N'))
)
;

