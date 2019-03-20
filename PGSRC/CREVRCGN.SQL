-- Table: c_revenuerecognition

-- DROP TABLE c_revenuerecognition;

CREATE TABLE c_revenuerecognition FOR SYSTEM NAME crevrcgn
(
  c_revenuerecognition_id        FOR COLUMN c_rrid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  istimebased                    FOR COLUMN itimb           CHAR(1) NOT NULL,
  recognitionfrequency           FOR COLUMN rcgfrq          CHAR(1),
  nomonths                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_revenuerecognition_pkey PRIMARY KEY (c_revenuerecognition_id),
  CONSTRAINT c_revenuerecognition_isactive_check CHECK (isactive in ('Y','N'))
)
;

