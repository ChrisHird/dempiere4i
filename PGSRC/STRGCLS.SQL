-- Table: s_training_class

-- DROP TABLE s_training_class;

CREATE TABLE s_training_class FOR SYSTEM NAME strgcls
(
  s_training_class_id            FOR COLUMN s_tcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  s_training_id                  FOR COLUMN s_tid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  startdat                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  enddat                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT s_training_class_pkey PRIMARY KEY (s_training_class_id),
  CONSTRAINT s_training_class_isactive_check CHECK (isactive in ('Y','N'))
)
;

