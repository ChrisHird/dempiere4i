-- Table: ad_treenodecmm

-- DROP TABLE ad_treenodecmm;

CREATE TABLE ad_treenodecmm FOR SYSTEM NAME adtreencmm
(
  ad_tree_id                                                DECIMAL(10,0) NOT NULL,
  node_id                                                   DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  parent_id                                                 DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_treenodecmm_pkey PRIMARY KEY (ad_tree_id, node_id),
  CONSTRAINT ad_treenodecmm_isactive_check CHECK (isactive in ('Y','N'))
)
;

