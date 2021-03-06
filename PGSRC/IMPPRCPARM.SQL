-- Table: imp_processorparameter

-- DROP TABLE imp_processorparameter;

CREATE TABLE imp_processorparameter FOR SYSTEM NAME impprcparm
(
  imp_processorparameter_id      FOR COLUMN imp_ppmid       DECIMAL(10,0) NOT NULL,
  imp_processor_id               FOR COLUMN imp_pid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  parametervalue                 FOR COLUMN parmval         VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT imp_processorparameter_pkey PRIMARY KEY (imp_processorparameter_id),
  CONSTRAINT imp_processorparameter_isactive_check CHECK (isactive in ('Y','N'))
)
;

