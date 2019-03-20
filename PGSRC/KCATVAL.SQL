-- Table: k_categoryvalue

-- DROP TABLE k_categoryvalue;

CREATE TABLE k_categoryvalue FOR SYSTEM NAME kcatval
(
  k_categoryvalue_id             FOR COLUMN k_cvid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  k_category_id                  FOR COLUMN k_cid           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_categoryvalue_pkey PRIMARY KEY (k_categoryvalue_id),
  CONSTRAINT k_categoryvalue_isactive_check CHECK (isactive in ('Y','N'))
)
;

