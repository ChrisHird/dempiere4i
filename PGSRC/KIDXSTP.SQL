-- Table: k_indexstop

-- DROP TABLE k_indexstop;

CREATE TABLE k_indexstop FOR SYSTEM NAME kidxstp
(
  k_indexstop_id                 FOR COLUMN k_idxstpid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  keyword                                                   VARCHAR(255) NOT NULL,
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0),
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_indexstop_pkey PRIMARY KEY (k_indexstop_id),
  CONSTRAINT k_indexstop_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT k_indexstop_ismanual_check CHECK (ismanual in ('Y','N'))
)
;

