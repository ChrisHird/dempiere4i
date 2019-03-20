-- Table: k_entryrelated

-- DROP TABLE k_entryrelated;

CREATE TABLE k_entryrelated FOR SYSTEM NAME kentrel
(
  k_entry_id                                                DECIMAL(10,0) NOT NULL,
  k_entryrelated_id              FOR COLUMN k_erid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_entryrelated_pkey PRIMARY KEY (k_entry_id, k_entryrelated_id),
  CONSTRAINT k_entryrelated_isactive_check CHECK (isactive in ('Y','N'))
)
;

