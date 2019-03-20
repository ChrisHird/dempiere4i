-- Table: c_bp_relation

-- DROP TABLE c_bp_relation;

CREATE TABLE c_bp_relation FOR SYSTEM NAME cbprel
(
  c_bp_relation_id               FOR COLUMN c_bprid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0),
  isshipto                                                  CHAR(1) NOT NULL DEFAULT 'N',
  isbillto                                                  CHAR(1) NOT NULL DEFAULT 'N',
  ispayfrom                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isremitto                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_bpartnerrelation_id          FOR COLUMN c_bprelid       DECIMAL(10,0) NOT NULL,
  c_bpartnerrelation_location_id FOR COLUMN c_bprlid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_relation_pkey PRIMARY KEY (c_bp_relation_id)
)
  ;
