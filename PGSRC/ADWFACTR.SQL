-- Table: ad_wf_activityresult

-- DROP TABLE ad_wf_activityresult;

CREATE TABLE ad_wf_activityresult FOR SYSTEM NAME adwfactr
(
  ad_wf_activityresult_id        FOR COLUMN ad_wfarid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_activity_id              FOR COLUMN ad_wfaid        DECIMAL(10,0) NOT NULL,
  attributename                  FOR COLUMN attrnam         VARCHAR(60) NOT NULL,
  attributevalue                 FOR COLUMN attrval         VARCHAR(2000),
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_activityresult_pkey PRIMARY KEY (ad_wf_activityresult_id),
  CONSTRAINT ad_wf_activityresult_isactive_check CHECK (isactive in ('Y','N'))
)
;

