-- Table: c_orgassignment

-- DROP TABLE c_orgassignment;

CREATE TABLE c_orgassignment FOR SYSTEM NAME corgasn
(
  c_orgassignment_id             FOR COLUMN c_oaid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  validfrom                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_orgassignment_pkey PRIMARY KEY (c_orgassignment_id)
)
  ;
