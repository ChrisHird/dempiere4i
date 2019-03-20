-- Table: t_mrp_crp

-- DROP TABLE t_mrp_crp;

CREATE TABLE t_mrp_crp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(50),
  isactive                                                  CHAR(1),
  seqno                                                     DECIMAL(10,0),
  t_mrp_crp_id                   FOR COLUMN t_mrpcrpid      DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_mrp_crp_pkey PRIMARY KEY (t_mrp_crp_id),
  CONSTRAINT t_mrp_crp_isactive_check CHECK (isactive in ('Y','N'))
)
;

