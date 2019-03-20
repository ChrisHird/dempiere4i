-- Table: m_lotctlexclude

-- DROP TABLE m_lotctlexclude;

CREATE TABLE m_lotctlexclude FOR SYSTEM NAME mlotcexcl
(
  m_lotctlexclude_id             FOR COLUMN m_lotexid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_lotctl_id                    FOR COLUMN m_lcid          DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_lotctlexclude_pkey PRIMARY KEY (m_lotctlexclude_id),
  CONSTRAINT m_lotctlexclude_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_lotctlexclude_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

