-- Table: cm_cstage

-- DROP TABLE cm_cstage;

CREATE TABLE cm_cstage
(
  cm_cstage_id                   FOR COLUMN cm_stgid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(2000),
  help                                                      VARCHAR(2000),
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0) NOT NULL,
  cm_template_id                 FOR COLUMN cm_tmplid       DECIMAL(10,0),
  title                                                     VARCHAR(60),
  notice                                                    VARCHAR(2000),
  containertype                  FOR COLUMN cnrtype         CHAR(1),
  containerlinkurl               FOR COLUMN cnrlurl         VARCHAR(60),
  relativeurl                    FOR COLUMN relurl          VARCHAR(120),
  priority                                                  DECIMAL(10,0) DEFAULT 0,
  isindexed                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  issecure                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  meta_robotstag                 FOR COLUMN meta_rbttg      VARCHAR(2000),
  meta_author                    FOR COLUMN meta_athr       VARCHAR(2000),
  meta_copyright                 FOR COLUMN meta_cpyr       VARCHAR(2000),
  meta_content                   FOR COLUMN meta_ctnt       VARCHAR(2000),
  meta_description               FOR COLUMN meta_descr      VARCHAR(2000),
  meta_keywords                  FOR COLUMN meta_kwd        VARCHAR(2000),
  meta_publisher                 FOR COLUMN meta_pub        VARCHAR(2000),
  structurexml                   FOR COLUMN structxml       VARCHAR(2000),
  containerxml                   FOR COLUMN cnrxml          VARCHAR(2000),
  cm_cstagelink_id               FOR COLUMN cm_stglid       DECIMAL(10,0),
  ismodified                                                CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  meta_language                  FOR COLUMN meta_lng        CHAR(2),
  isvalid                                                   CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_cstage_pkey PRIMARY KEY (cm_cstage_id),
  CONSTRAINT cm_cstage_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_cstage_isindexed_check CHECK (isindexed in ('Y','N')),
  CONSTRAINT cm_cstage_issecure_check CHECK (issecure in ('Y','N'))
)
;

