-- Table: s_resource

-- DROP TABLE s_resource;

CREATE TABLE s_resource
(
  s_resource_id                  FOR COLUMN s_rid           DECIMAL(10,0) NOT NULL,
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
  s_resourcetype_id              FOR COLUMN s_rtid          DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  isavailable                    FOR COLUMN isavail         CHAR(1) NOT NULL DEFAULT 'Y',
  ad_user_id                                                DECIMAL(10,0),
  chargeableqty                  FOR COLUMN chgqty          DECFLOAT(16) DEFAULT 0,
  percentutilization             FOR COLUMN pcutil          DECFLOAT(16) NOT NULL DEFAULT 100,
  dailycapacity                  FOR COLUMN dlycap          DECFLOAT(16),
  ismanufacturingresource        FOR COLUMN ismanfrrsc      CHAR(1) DEFAULT 'N',
  waitingtime                    FOR COLUMN wattim          DECFLOAT(16),
  manufacturingresourcetype      FOR COLUMN mfgrsctyp       CHAR(2),
  queuingtime                    FOR COLUMN queuetim        DECFLOAT(16),
  planninghorizon                FOR COLUMN plnhoriz        DECIMAL(10,0) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT s_resource_pkey PRIMARY KEY (s_resource_id),
  CONSTRAINT chk_col_53272 CHECK (percentutilization >= 0),
  CONSTRAINT s_resource_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT s_resource_isavailable_check CHECK (isavailable in ('Y','N')),
  CONSTRAINT s_resource_ismanufacturingresource_check CHECK (ismanufacturingresource in ('Y','N'))
)
;

