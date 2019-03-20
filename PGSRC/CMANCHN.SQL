-- Table: cm_accessnewschannel

-- DROP TABLE cm_accessnewschannel;

CREATE TABLE cm_accessnewschannel FOR SYSTEM NAME cmanchn
(
  cm_accessprofile_id            FOR COLUMN cm_aprfid       DECIMAL(10,0) NOT NULL,
  cm_newschannel_id              FOR COLUMN cm_ncid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_accessnewschannel_pkey PRIMARY KEY (cm_accessprofile_id, cm_newschannel_id),
  CONSTRAINT cm_accessnewschannel_isactive_check CHECK (isactive in ('Y','N'))
)
;

