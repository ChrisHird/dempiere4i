-- Table: pp_wf_node_asset

-- DROP TABLE pp_wf_node_asset;

CREATE TABLE pp_wf_node_asset FOR SYSTEM NAME ppwfna
(
  pp_wf_node_asset_id            FOR COLUMN pp_wfnaid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_wf_node_asset_pkey PRIMARY KEY (pp_wf_node_asset_id),
  CONSTRAINT pp_wf_node_asset_isactive_check CHECK (isactive in ('Y','N'))
)
;

