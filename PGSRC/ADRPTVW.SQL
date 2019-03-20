-- Table: ad_reportview

-- DROP TABLE ad_reportview;

CREATE TABLE ad_reportview FOR SYSTEM NAME adrptvw
(
  ad_reportview_id               FOR COLUMN ad_rptvid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  orderbyclause                  FOR COLUMN obclse          VARCHAR(2000),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  printname                                                 VARCHAR(60) DEFAULT NULL,
  iscentrallymaintained          FOR COLUMN iscntmnt        CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  classname                                                 VARCHAR(255) DEFAULT NULL,
  CONSTRAINT ad_reportview_pkey PRIMARY KEY (ad_reportview_id),
  CONSTRAINT ad_reportview_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_reportview_iscentrallymaintained_check CHECK (iscentrallymaintained in ('Y','N'))
)
;

