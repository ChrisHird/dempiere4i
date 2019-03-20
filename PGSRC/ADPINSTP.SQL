-- Table: ad_pinstance_para

-- DROP TABLE ad_pinstance_para;

CREATE TABLE ad_pinstance_para FOR SYSTEM NAME adpinstp
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  parametername                  FOR COLUMN parmnme         VARCHAR(60),
  p_string                                                  VARCHAR(255),
  p_string_to                    FOR COLUMN p_strto         VARCHAR(255),
  p_number                                                  DECFLOAT(16),
  p_number_to                    FOR COLUMN p_numto         DECFLOAT(16),
  p_date                                                    TIMESTAMP,
  p_date_to                                                 TIMESTAMP,
  info                                                      VARCHAR(60),
  info_to                                                   VARCHAR(60),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_pinstance_para_pkey PRIMARY KEY (ad_pinstance_id, seqno)
)
  ;
