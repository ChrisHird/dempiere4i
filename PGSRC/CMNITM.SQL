-- Table: cm_newsitem

-- DROP TABLE cm_newsitem;

CREATE TABLE cm_newsitem FOR SYSTEM NAME cmnitm
(
  cm_newsitem_id                 FOR COLUMN cm_nwsiid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  cm_newschannel_id              FOR COLUMN cm_ncid         DECIMAL(10,0) NOT NULL,
  title                                                     VARCHAR(255),
  description                    FOR COLUMN desc            VARCHAR(255),
  author                                                    VARCHAR(255),
  linkurl                                                   VARCHAR(120),
  pubdate                                                   TIMESTAMP,
  contenthtml                    FOR COLUMN conthtml        CLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_newsitem_pkey PRIMARY KEY (cm_newsitem_id),
  CONSTRAINT cm_newsitem_isactive_check CHECK (isactive in ('Y','N'))
)
;

