-- Table: pp_order_node_product

-- DROP TABLE pp_order_node_product;

CREATE TABLE pp_order_node_product FOR SYSTEM NAME ppordnp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0) NOT NULL,
  pp_order_node_id               FOR COLUMN pp_onodid       DECIMAL(10,0) NOT NULL,
  pp_order_node_product_id       FOR COLUMN pp_onodpid      DECIMAL(10,0) NOT NULL,
  pp_order_workflow_id           FOR COLUMN pp_owfid        DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  yield                                                     DECIMAL(10,0),
  issubcontracting               FOR COLUMN issubcont       CHAR(1),
  seqno                                                     DECIMAL(10,0),
  qty                                                       DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_order_node_product_pkey PRIMARY KEY (pp_order_node_product_id),
  CONSTRAINT pp_order_node_product_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_order_node_product_issubcontracting_check CHECK (issubcontracting in ('Y','N'))
)
;

