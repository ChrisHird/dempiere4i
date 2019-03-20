-- Table: c_rfqresponseline

-- DROP TABLE c_rfqresponseline;

CREATE TABLE c_rfqresponseline FOR SYSTEM NAME crfqrln
(
  c_rfqresponseline_id           FOR COLUMN c_rqrlid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfqline_id                   FOR COLUMN c_rqlid         DECIMAL(10,0) NOT NULL,
  c_rfqresponse_id               FOR COLUMN c_rqrid         DECIMAL(10,0) NOT NULL,
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  isselectedwinner               FOR COLUMN isselwinn       CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  dateworkstart                  FOR COLUMN datwrks         TIMESTAMP,
  deliverydays                   FOR COLUMN deldays         DECIMAL(10,0) DEFAULT 0,
  dateworkcomplete               FOR COLUMN datwrkc         TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfqresponseline_pkey PRIMARY KEY (c_rfqresponseline_id),
  CONSTRAINT c_rfqresponseline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_rfqresponseline_isselectedwinner_check CHECK (isselectedwinner in ('Y','N')),
  CONSTRAINT c_rfqresponseline_isselfservice_check CHECK (isselfservice in ('Y','N'))
)
;

