-- Table: c_cyclestep

-- DROP TABLE c_cyclestep;

CREATE TABLE c_cyclestep FOR SYSTEM NAME ccycls
(
  c_cyclestep_id                 FOR COLUMN c_csid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_cycle_id                                                DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  relativeweight                 FOR COLUMN relwgt          DECFLOAT(16) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cyclestep_pkey PRIMARY KEY (c_cyclestep_id),
  CONSTRAINT c_cyclestep_isactive_check CHECK (isactive in ('Y','N'))
)
;

