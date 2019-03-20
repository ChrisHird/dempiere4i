-- Table: ad_orginfo

-- DROP TABLE ad_orginfo;

CREATE TABLE ad_orginfo
(
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  duns                                                      character(11) NOT NULL,
  taxid                                                     VARCHAR(20) NOT NULL,
  pa_goal_id                                                DECIMAL(10,0),
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0),
  parent_org_id                  FOR COLUMN poid            DECIMAL(10,0),
  ad_orgtype_id                  FOR COLUMN ad_otypid       DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  transferbank_id                FOR COLUMN trnsbid         DECIMAL(10,0),
  transfercashbook_id            FOR COLUMN trnscbid        DECIMAL(10,0),
  receiptfootermsg               FOR COLUMN rcptfmsg        VARCHAR(1023),
  dropship_warehouse_id          FOR COLUMN drpswid         DECIMAL(10,0),
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0),
  logo_id                                                   DECIMAL(10,0),
  phone                                                     VARCHAR(40),
  phone2                                                    VARCHAR(40),
  fax                                                       VARCHAR(40),
  email                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_orginfo_pkey PRIMARY KEY (ad_org_id),
  CONSTRAINT ad_orginfo_isactive_check CHECK (isactive in ('Y','N'))
)
;

