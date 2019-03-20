-- Table: m_productdownload

-- DROP TABLE m_productdownload;

CREATE TABLE m_productdownload FOR SYSTEM NAME mprddl
(
  m_productdownload_id           FOR COLUMN m_pdwnlid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  downloadurl                    FOR COLUMN dlurl           VARCHAR(120) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productdownload_pkey PRIMARY KEY (m_productdownload_id),
  CONSTRAINT m_productdownload_isactive_check CHECK (isactive in ('Y','N'))
)
;

