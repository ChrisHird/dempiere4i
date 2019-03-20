-- Table: pp_wf_node_product

-- DROP TABLE pp_wf_node_product;

CREATE TABLE pp_wf_node_product FOR SYSTEM NAME ppwfnp
(
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'U',
  configurationlevel             FOR COLUMN cfglvl          CHAR(1) DEFAULT 'S',
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_wf_node_product_id          FOR COLUMN pp_wfnpid       DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16),
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  issubcontracting               FOR COLUMN issubcont       CHAR(1) DEFAULT 'N',
  yield                                                     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_wf_node_product_pkey PRIMARY KEY (pp_wf_node_product_id),
  CONSTRAINT pp_wf_node_product_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_wf_node_product_issubcontracting_check CHECK (issubcontracting in ('Y','N'))
)
;

