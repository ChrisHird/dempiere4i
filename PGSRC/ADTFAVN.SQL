-- Table: ad_tree_favorite_node

-- DROP TABLE ad_tree_favorite_node;

CREATE TABLE ad_tree_favorite_node FOR SYSTEM NAME adtfavn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_menu_id                                                DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_tree_favorite_id            FOR COLUMN ad_trfid        DECIMAL(10,0) NOT NULL,
  ad_tree_favorite_node_id       FOR COLUMN ad_trfnid       DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  issummary                                                 CHAR(1) NOT NULL,
  nodename                                                  VARCHAR(100),
  parent_id                                                 DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  iscollapsible                  FOR COLUMN isclpe          CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_tree_favorite_node_key PRIMARY KEY (ad_tree_favorite_node_id),
  CONSTRAINT ad_tree_favorite_node_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_tree_favorite_node_iscollapsible_check CHECK (iscollapsible in ('Y','N')),
  CONSTRAINT ad_tree_favorite_node_issummary_check CHECK (issummary in ('Y','N'))
)
;

