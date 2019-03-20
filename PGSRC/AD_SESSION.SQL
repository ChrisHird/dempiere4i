-- Table: ad_session

-- DROP TABLE ad_session;

CREATE TABLE ad_session
(
  ad_session_id                  FOR COLUMN ad_sid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  websession                                                VARCHAR(40),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  remote_host                    FOR COLUMN rmthost         VARCHAR(120),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_role_id                                                DECIMAL(10,0),
  logindate                                                 TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_session_pkey PRIMARY KEY (ad_session_id)
)
  ;
