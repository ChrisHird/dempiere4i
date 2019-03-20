-- Table: ad_wf_responsible

-- DROP TABLE ad_wf_responsible;

CREATE TABLE ad_wf_responsible FOR SYSTEM NAME adwfrsp
(
  ad_wf_responsible_id           FOR COLUMN ad_wfrid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  responsibletype                FOR COLUMN resptyp         CHAR(1) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  ad_role_id                                                DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_responsible_pkey PRIMARY KEY (ad_wf_responsible_id),
  CONSTRAINT ad_wf_responsible_isactive_check CHECK (isactive in ('Y','N'))
)
;

