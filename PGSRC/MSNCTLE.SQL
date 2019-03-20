-- Table: m_sernoctlexclude

-- DROP TABLE m_sernoctlexclude;

CREATE TABLE m_sernoctlexclude FOR SYSTEM NAME msnctle
(
  m_sernoctlexclude_id           FOR COLUMN m_snexid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_sernoctl_id                  FOR COLUMN m_sncid         DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_sernoctlexclude_pkey PRIMARY KEY (m_sernoctlexclude_id),
  CONSTRAINT m_sernoctlexclude_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_sernoctlexclude_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

