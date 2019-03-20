-- Table: pp_order_node_asset

-- DROP TABLE pp_order_node_asset;

CREATE TABLE pp_order_node_asset FOR SYSTEM NAME ppordna
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0) NOT NULL,
  pp_order_node_asset_id         FOR COLUMN pp_ordnaid      DECIMAL(10,0) NOT NULL,
  pp_order_node_id               FOR COLUMN pp_onodid       DECIMAL(10,0) NOT NULL,
  pp_order_workflow_id           FOR COLUMN pp_owfid        DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_order_node_asset_pkey PRIMARY KEY (pp_order_node_asset_id),
  CONSTRAINT pp_order_node_asset_isactive_check CHECK (isactive in ('Y','N'))
)
;

