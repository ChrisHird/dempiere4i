-- Table: m_attributesetexclude

-- DROP TABLE m_attributesetexclude;

CREATE TABLE m_attributesetexclude FOR SYSTEM NAME matrsexcl
(
  m_attributesetexclude_id       FOR COLUMN m_atrexid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_attributeset_id              FOR COLUMN m_atsid         DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributesetexclude_pkey PRIMARY KEY (m_attributesetexclude_id),
  CONSTRAINT m_attributesetexclude_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_attributesetexclude_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

