-- Table: cm_accesscontainer

-- DROP TABLE cm_accesscontainer;

CREATE TABLE cm_accesscontainer FOR SYSTEM NAME cmacnt
(
  cm_accessprofile_id            FOR COLUMN cm_aprfid       DECIMAL(10,0) NOT NULL,
  cm_container_id                FOR COLUMN cm_cntid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_accesscontainer_pkey PRIMARY KEY (cm_accessprofile_id, cm_container_id),
  CONSTRAINT cm_accesscontainer_isactive_check CHECK (isactive in ('Y','N'))
)
;

