-- Table: c_cyclephase

-- DROP TABLE c_cyclephase;

CREATE TABLE c_cyclephase FOR SYSTEM NAME ccyclp
(
  c_cyclestep_id                 FOR COLUMN c_csid          DECIMAL(10,0) NOT NULL,
  c_phase_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cyclephase_pkey PRIMARY KEY (c_cyclestep_id, c_phase_id)
)
  ;
