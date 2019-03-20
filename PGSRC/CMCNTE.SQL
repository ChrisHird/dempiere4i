-- Table: cm_container_element

-- DROP TABLE cm_container_element;

CREATE TABLE cm_container_element FOR SYSTEM NAME cmcnte
(
  cm_container_element_id        FOR COLUMN cm_cnteid       DECIMAL(10,0) NOT NULL,
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
  cm_container_id                FOR COLUMN cm_cntid        DECIMAL(10,0) NOT NULL,
  contenthtml                    FOR COLUMN conthtml        CLOB,
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_container_element_pkey PRIMARY KEY (cm_container_element_id),
  CONSTRAINT cm_container_element_isactive_check CHECK (isactive in ('Y','N'))
)
;

