-- Table: ad_wf_nodenext

-- DROP TABLE ad_wf_nodenext;

CREATE TABLE ad_wf_nodenext FOR SYSTEM NAME adwfnn
(
  ad_wf_nodenext_id              FOR COLUMN ad_wfnnid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  ad_wf_next_id                  FOR COLUMN ad_wfnxtid      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  seqno                                                     DECIMAL(10,0) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  transitioncode                 FOR COLUMN transcde        VARCHAR(2000),
  isstduserworkflow              FOR COLUMN isstduwf        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_nodenext_pkey PRIMARY KEY (ad_wf_nodenext_id),
  CONSTRAINT ad_wf_nodenext_isactive_check CHECK (isactive in ('Y','N'))
)
;

