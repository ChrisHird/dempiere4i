-- Table: ad_wf_node_trl

-- DROP TABLE ad_wf_node_trl;

CREATE TABLE ad_wf_node_trl FOR SYSTEM NAME adwfnt
(
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_node_trl_pkey PRIMARY KEY (ad_language, ad_wf_node_id),
  CONSTRAINT ad_wf_node_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_wf_node_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

