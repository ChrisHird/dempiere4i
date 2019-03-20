-- Table: cm_template

-- DROP TABLE cm_template;

CREATE TABLE cm_template FOR SYSTEM NAME cmtpl
(
  cm_template_id                 FOR COLUMN cm_tmplid       DECIMAL(10,0) NOT NULL,
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
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0),
  value                                                     VARCHAR(40) NOT NULL,
  isinclude                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  isusead                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  isnews                                                    CHAR(1) NOT NULL DEFAULT 'Y',
  elements                                                  VARCHAR(2000),
  templatexst                    FOR COLUMN tmplexst        CLOB,
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_template_pkey PRIMARY KEY (cm_template_id),
  CONSTRAINT cm_template_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_template_isinclude_check CHECK (isinclude in ('Y','N')),
  CONSTRAINT cm_template_isnews_check CHECK (isnews in ('Y','N')),
  CONSTRAINT cm_template_isusead_check CHECK (isusead in ('Y','N'))
)
;

