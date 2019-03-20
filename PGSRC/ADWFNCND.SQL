-- Table: ad_wf_nextcondition

-- DROP TABLE ad_wf_nextcondition;

CREATE TABLE ad_wf_nextcondition FOR SYSTEM NAME adwfncnd
(
  ad_wf_nextcondition_id         FOR COLUMN ad_wfncid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_nodenext_id              FOR COLUMN ad_wfnnid       DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  andor                                                     CHAR(1) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  operation                                                 CHAR(2) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  value2                                                    VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_nextcondition_pkey PRIMARY KEY (ad_wf_nextcondition_id),
  CONSTRAINT ad_wf_nextcondition_isactive_check CHECK (isactive in ('Y','N'))
)
;

