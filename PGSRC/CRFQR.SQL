-- Table: c_rfqresponse

-- DROP TABLE c_rfqresponse;

CREATE TABLE c_rfqresponse FOR SYSTEM NAME crfqr
(
  c_rfqresponse_id               FOR COLUMN c_rqrid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfq_id                                                  DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  dateinvited                    FOR COLUMN datinvt         TIMESTAMP,
  dateresponse                   FOR COLUMN datrsp          TIMESTAMP,
  dateworkstart                  FOR COLUMN datwrks         TIMESTAMP,
  deliverydays                   FOR COLUMN deldays         DECIMAL(10,0) DEFAULT 0,
  dateworkcomplete               FOR COLUMN datwrkc         TIMESTAMP,
  price                                                     DECFLOAT(16) NOT NULL DEFAULT 0,
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  iscomplete                                                CHAR(1) NOT NULL DEFAULT 'N',
  isselectedwinner               FOR COLUMN isselwinn       CHAR(1) NOT NULL DEFAULT 'N',
  ranking                                                   DECIMAL(10,0) DEFAULT 0,
  processing                                                CHAR(1),
  c_order_id                                                DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  checkcomplete                  FOR COLUMN chkcmp          CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfqresponse_pkey PRIMARY KEY (c_rfqresponse_id),
  CONSTRAINT c_rfqresponse_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_rfqresponse_iscomplete_check CHECK (iscomplete in ('Y','N')),
  CONSTRAINT c_rfqresponse_isselectedwinner_check CHECK (isselectedwinner in ('Y','N')),
  CONSTRAINT c_rfqresponse_isselfservice_check CHECK (isselfservice in ('Y','N')),
  CONSTRAINT c_rfqresponse_processed_check CHECK (processed in ('Y','N'))
)
;

