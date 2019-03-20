-- Table: ad_ref_list

-- DROP TABLE ad_ref_list;

CREATE TABLE ad_ref_list FOR SYSTEM NAME adrefl
(
  ad_ref_list_id                 FOR COLUMN ad_rlid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_ref_list_pkey PRIMARY KEY (ad_ref_list_id),
  CONSTRAINT ad_ref_list_isactive_check CHECK (isactive in ('Y','N'))
)
;

