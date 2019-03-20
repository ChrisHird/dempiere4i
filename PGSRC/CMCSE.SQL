-- Table: cm_cstage_element

-- DROP TABLE cm_cstage_element;

CREATE TABLE cm_cstage_element FOR SYSTEM NAME cmcse
(
  cm_cstage_element_id           FOR COLUMN cm_cseid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  cm_cstage_id                   FOR COLUMN cm_stgid        DECIMAL(10,0) NOT NULL,
  contenthtml                    FOR COLUMN conthtml        CLOB,
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_cstage_element_pkey PRIMARY KEY (cm_cstage_element_id),
  CONSTRAINT cm_cstage_element_isactive_check CHECK (isactive in ('Y','N'))
)
;

