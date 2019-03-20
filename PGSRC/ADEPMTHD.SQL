-- Table: a_depreciation_method

-- DROP TABLE a_depreciation_method;

CREATE TABLE a_depreciation_method FOR SYSTEM NAME adepmthd
(
  a_depreciation_method_id       FOR COLUMN a_depmid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(120),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  depreciationtype               FOR COLUMN deptyp          VARCHAR(10),
  isactive                                                  CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  text                                                      VARCHAR(2000),
  description                    FOR COLUMN desc            VARCHAR(510),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_method_pkey PRIMARY KEY (a_depreciation_method_id),
  CONSTRAINT a_depreciation_method_isactive_check CHECK (isactive in ('Y','N'))
)
;

