-- Table: ad_wf_node_para

-- DROP TABLE ad_wf_node_para;

CREATE TABLE ad_wf_node_para FOR SYSTEM NAME adwfnp
(
  ad_wf_node_para_id             FOR COLUMN ad_wfnpid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  attributename                  FOR COLUMN attrnam         VARCHAR(60),
  ad_process_para_id             FOR COLUMN ad_ppid         DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  attributevalue                 FOR COLUMN attrval         VARCHAR(60),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_node_para_pkey PRIMARY KEY (ad_wf_node_para_id),
  CONSTRAINT ad_wf_node_para_isactive_check CHECK (isactive in ('Y','N'))
)
;

