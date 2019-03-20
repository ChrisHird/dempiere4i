-- Table: ad_zoomcondition

-- DROP TABLE ad_zoomcondition;

CREATE TABLE ad_zoomcondition FOR SYSTEM NAME adzmcnd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_zoomcondition_id            FOR COLUMN ad_zcid         DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60),
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  zoomlogic                                                 VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_zoomcondition_key PRIMARY KEY (ad_zoomcondition_id),
  CONSTRAINT ad_zoomcondition_isactive_check CHECK (isactive in ('Y','N'))
)
;

