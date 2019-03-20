-- Table: ad_treenodebp

-- DROP TABLE ad_treenodebp;

CREATE TABLE ad_treenodebp FOR SYSTEM NAME adtreenbp
(
  ad_tree_id                                                DECIMAL(10,0) NOT NULL,
  node_id                                                   DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  parent_id                                                 DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_treenodebp_pkey PRIMARY KEY (ad_tree_id, node_id),
  CONSTRAINT ad_treenodebp_isactive_check CHECK (isactive in ('Y','N'))
)
;

