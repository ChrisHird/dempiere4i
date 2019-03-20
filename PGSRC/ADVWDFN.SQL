-- Table: ad_view_definition

-- DROP TABLE ad_view_definition;

CREATE TABLE ad_view_definition FOR SYSTEM NAME advwdfn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_view_definition_id          FOR COLUMN ad_vwdid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_view_id                                                DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  tablealias                                                VARCHAR(20) NOT NULL,
  joinclause                                                VARCHAR(255) DEFAULT NULL,
  processing                                                CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_view_definition_key PRIMARY KEY (ad_view_definition_id),
  CONSTRAINT ad_view_definition_isactive_check CHECK (isactive in ('Y','N'))
)
;

