-- Table: ad_infocolumn

-- DROP TABLE ad_infocolumn;

CREATE TABLE ad_infocolumn FOR SYSTEM NAME adinfcol
(
  ad_infocolumn_id               FOR COLUMN ad_infclid      DECIMAL(10,0) NOT NULL,
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
  ad_infowindow_id               FOR COLUMN ad_infwid       DECIMAL(10,0) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  selectclause                   FOR COLUMN sltclse         VARCHAR(255) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  isdisplayed                    FOR COLUMN isdspd          CHAR(1) NOT NULL DEFAULT 'Y',
  isquerycriteria                FOR COLUMN isqrycrit       CHAR(1) NOT NULL DEFAULT 'N',
  ad_element_id                  FOR COLUMN ad_eid          DECIMAL(10,0),
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_infocolumn_pkey PRIMARY KEY (ad_infocolumn_id),
  CONSTRAINT ad_infocolumn_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_infocolumn_isdisplayed_check CHECK (isdisplayed in ('Y','N')),
  CONSTRAINT ad_infocolumn_isquerycriteria_check CHECK (isquerycriteria in ('Y','N'))
)
;

