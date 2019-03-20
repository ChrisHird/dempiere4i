-- Table: cm_containerttable

-- DROP TABLE cm_containerttable;

CREATE TABLE cm_containerttable FOR SYSTEM NAME cmcnttbl
(
  cm_containerttable_id          FOR COLUMN cm_cttblid     DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  cm_container_id                FOR COLUMN cm_cntid        DECIMAL(10,0) NOT NULL,
  cm_templatetable_id            FOR COLUMN cm_tmpltid      DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0),
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  otherclause                    FOR COLUMN othc            VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_containerttable_pkey PRIMARY KEY (cm_containerttable_id),
  CONSTRAINT cm_containerttable_isactive_check CHECK (isactive in ('Y','N'))
)
;

