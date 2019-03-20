-- Table: hr_contract

-- DROP TABLE hr_contract;

CREATE TABLE hr_contract FOR SYSTEM NAME hrctrt
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_contract_id                 FOR COLUMN hr_cntrid       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  netdays                                                   DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  monthlysalary_id               FOR COLUMN mntdsid         DECIMAL(10,0),
  dailysalary_id                 FOR COLUMN dlysalid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_contract_pkey PRIMARY KEY (hr_contract_id),
  CONSTRAINT hr_contract_isactive_check CHECK (isactive in ('Y','N'))
)
;

