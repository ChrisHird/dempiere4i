-- Table: s_resourcetype

-- DROP TABLE s_resourcetype;

CREATE TABLE s_resourcetype FOR SYSTEM NAME srscetyp
(
  s_resourcetype_id              FOR COLUMN s_rtid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  issingleassignment             FOR COLUMN issglasn        CHAR(1) NOT NULL DEFAULT 'N',
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  allowuomfractions              FOR COLUMN alwuomfr        CHAR(1) NOT NULL DEFAULT 'N',
  timeslotstart                  FOR COLUMN timslts         TIMESTAMP,
  timeslotend                    FOR COLUMN timslte         TIMESTAMP,
  istimeslot                                                CHAR(1) NOT NULL DEFAULT 'N',
  isdateslot                                                CHAR(1) NOT NULL DEFAULT 'N',
  onsunday                                                  CHAR(1) NOT NULL DEFAULT 'N',
  onmonday                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  ontuesday                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  onwednesday                    FOR COLUMN onwed           CHAR(1) NOT NULL DEFAULT 'Y',
  onthursday                                                CHAR(1) NOT NULL DEFAULT 'Y',
  onfriday                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  onsaturday                                                CHAR(1) NOT NULL DEFAULT 'N',
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0) NOT NULL,
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0) NOT NULL,
  chargeableqty                  FOR COLUMN chgqty          DECFLOAT(16) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_taxtype_id                   FOR COLUMN c_txtypid       DECIMAL(10,0),
  CONSTRAINT s_resourcetype_pkey PRIMARY KEY (s_resourcetype_id),
  CONSTRAINT s_resourcetype_allowuomfractions_check CHECK (allowuomfractions in ('Y','N')),
  CONSTRAINT s_resourcetype_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT s_resourcetype_isdateslot_check CHECK (isdateslot in ('Y','N')),
  CONSTRAINT s_resourcetype_issingleassignment_check CHECK (issingleassignment in ('Y','N')),
  CONSTRAINT s_resourcetype_istimeslot_check CHECK (istimeslot in ('Y','N')),
  CONSTRAINT s_resourcetype_onfriday_check CHECK (onfriday in ('Y','N')),
  CONSTRAINT s_resourcetype_onmonday_check CHECK (onmonday in ('Y','N')),
  CONSTRAINT s_resourcetype_onsaturday_check CHECK (onsaturday in ('Y','N')),
  CONSTRAINT s_resourcetype_onsunday_check CHECK (onsunday in ('Y','N')),
  CONSTRAINT s_resourcetype_onthursday_check CHECK (onthursday in ('Y','N')),
  CONSTRAINT s_resourcetype_ontuesday_check CHECK (ontuesday in ('Y','N')),
  CONSTRAINT s_resourcetype_onwednesday_check CHECK (onwednesday in ('Y','N'))
)
;

