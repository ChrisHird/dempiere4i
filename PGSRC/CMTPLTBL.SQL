-- Table: cm_templatetable

-- DROP TABLE cm_templatetable;

CREATE TABLE cm_templatetable FOR SYSTEM NAME cmtpltbl
(
  cm_templatetable_id            FOR COLUMN cm_tmpltid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  cm_template_id                 FOR COLUMN cm_tmplid       DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  otherclause                    FOR COLUMN othc            VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_templatetable_pkey PRIMARY KEY (cm_templatetable_id),
  CONSTRAINT cm_templatetable_isactive_check CHECK (isactive in ('Y','N'))
)
;

