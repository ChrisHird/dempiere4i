-- Table: k_index

-- DROP TABLE k_index;

CREATE TABLE k_index
(
  k_index_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  keyword                                                   VARCHAR(255) NOT NULL,
  excerpt                                                   VARCHAR(2000),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  sourceupdated                  FOR COLUMN srcupd          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0),
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_index_pkey PRIMARY KEY (k_index_id),
  CONSTRAINT k_index_isactive_check CHECK (isactive in ('Y','N'))
)
;

