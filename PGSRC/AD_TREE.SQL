-- Table: ad_tree

-- DROP TABLE ad_tree;

CREATE TABLE ad_tree
(
  ad_tree_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  treetype                                                  VARCHAR(2) NOT NULL,
  isallnodes                                                CHAR(1) NOT NULL DEFAULT 'Y',
  processing                                                CHAR(1),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  CONSTRAINT ad_tree_pkey PRIMARY KEY (ad_tree_id),
  CONSTRAINT ad_tree_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_tree_isallnodes_check CHECK (isallnodes in ('Y','N'))
)
;

