-- Table: k_entrycategory

-- DROP TABLE k_entrycategory;

CREATE TABLE k_entrycategory FOR SYSTEM NAME kentcat
(
  k_category_id                  FOR COLUMN k_cid           DECIMAL(10,0) NOT NULL,
  k_entry_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  k_categoryvalue_id             FOR COLUMN k_cvid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_entrycategory_pkey PRIMARY KEY (k_category_id, k_entry_id),
  CONSTRAINT k_entrycategory_isactive_check CHECK (isactive in ('Y','N'))
)
;

