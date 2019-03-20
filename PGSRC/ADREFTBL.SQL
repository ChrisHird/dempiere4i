-- Table: ad_ref_table

-- DROP TABLE ad_ref_table;

CREATE TABLE ad_ref_table FOR SYSTEM NAME adreftbl
(
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_key                                                    DECIMAL(10,0) NOT NULL,
  ad_display                                                DECIMAL(10,0) NOT NULL,
  isvaluedisplayed               FOR COLUMN isvadsp         CHAR(1) NOT NULL DEFAULT 'N',
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  orderbyclause                  FOR COLUMN obclse          VARCHAR(2000),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  isalert                                                   CHAR(1) NOT NULL DEFAULT 'N',
  displaysql                                                VARCHAR(2000),
  isdisplayidentifier            FOR COLUMN isdspid         CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_ref_table_pkey PRIMARY KEY (ad_reference_id),
  CONSTRAINT ad_ref_table_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_ref_table_isvaluedisplayed_check CHECK (isvaluedisplayed in ('Y','N'))
)
;

