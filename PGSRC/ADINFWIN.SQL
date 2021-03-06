-- Table: ad_infowindow

-- DROP TABLE ad_infowindow;

CREATE TABLE ad_infowindow FOR SYSTEM NAME adinfwin
(
  ad_infowindow_id               FOR COLUMN ad_infwid       DECIMAL(10,0) NOT NULL,
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
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  fromclause                                                VARCHAR(2000) NOT NULL,
  otherclause                    FOR COLUMN othc            VARCHAR(2000),
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_infowindow_pkey PRIMARY KEY (ad_infowindow_id),
  CONSTRAINT ad_infowindow_isactive_check CHECK (isactive in ('Y','N'))
)
;

