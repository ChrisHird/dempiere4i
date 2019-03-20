-- Table: cm_accessstage

-- DROP TABLE cm_accessstage;

CREATE TABLE cm_accessstage FOR SYSTEM NAME cmastg
(
  cm_accessprofile_id            FOR COLUMN cm_aprfid       DECIMAL(10,0) NOT NULL,
  cm_cstage_id                   FOR COLUMN cm_stgid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_accessstage_pkey PRIMARY KEY (cm_accessprofile_id, cm_cstage_id),
  CONSTRAINT cm_accessstage_isactive_check CHECK (isactive in ('Y','N'))
)
;

