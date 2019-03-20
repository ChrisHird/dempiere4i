-- Table: asp_field

-- DROP TABLE asp_field;

CREATE TABLE asp_field
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_field_id                    FOR COLUMN ad_fid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  asp_field_id                   FOR COLUMN asp_fldid       DECIMAL(10,0) NOT NULL,
  asp_tab_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_field_pkey PRIMARY KEY (asp_field_id),
  CONSTRAINT asp_field_isactive_check CHECK (isactive in ('Y','N'))
)
;

