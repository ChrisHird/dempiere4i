-- Table: pp_order_nodenext

-- DROP TABLE pp_order_nodenext;

CREATE TABLE pp_order_nodenext FOR SYSTEM NAME ppordnn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_next_id                  FOR COLUMN ad_wfnxtid      DECIMAL(10,0),
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'U',
  isactive                                                  CHAR(1) NOT NULL,
  isstduserworkflow              FOR COLUMN isstduwf        CHAR(1),
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0) NOT NULL,
  pp_order_next_id               FOR COLUMN pp_ordnid       DECIMAL(10,0),
  pp_order_nodenext_id           FOR COLUMN pp_onnid        DECIMAL(10,0) NOT NULL,
  pp_order_node_id               FOR COLUMN pp_onodid       DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 10,
  transitioncode                 FOR COLUMN transcde        VARCHAR(2000),
  updated                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_order_nodenext_pkey PRIMARY KEY (pp_order_nodenext_id),
  CONSTRAINT pp_order_nodenext_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_order_nodenext_isstduserworkflow_check CHECK (isstduserworkflow in ('Y','N'))
)
;

