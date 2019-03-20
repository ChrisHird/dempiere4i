-- Table: ad_pinstance_log

-- DROP TABLE ad_pinstance_log;

CREATE TABLE ad_pinstance_log FOR SYSTEM NAME adpinstl
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  ad_pinstance_log_id            FOR COLUMN ad_pilid        DECIMAL(10,0) NOT NULL,
  p_date                                                    TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  p_id                                                      DECIMAL(10,0),
  p_number                                                  DECFLOAT(16),
  p_msg                                                     VARCHAR(2000),
  createdby                                                 DECIMAL(10,0),
  created                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP,
  isactive                                                  CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_pinstance_log_pkey PRIMARY KEY (ad_pinstance_id, ad_pinstance_log_id),
  CONSTRAINT ad_pinstance_log_isactive_check CHECK (isactive in ('Y','N'))
)
;

