-- Table: cm_accesslistbpgroup

-- DROP TABLE cm_accesslistbpgroup;

CREATE TABLE cm_accesslistbpgroup FOR SYSTEM NAME cmalbgrp
(
  cm_accessprofile_id            FOR COLUMN cm_aprfid       DECIMAL(10,0) NOT NULL,
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_accesslistbpgroup_pkey PRIMARY KEY (cm_accessprofile_id, c_bp_group_id),
  CONSTRAINT cm_accesslistbpgroup_isactive_check CHECK (isactive in ('Y','N'))
)
;

