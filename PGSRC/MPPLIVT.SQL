-- Table: m_perpetualinv

-- DROP TABLE m_perpetualinv;

CREATE TABLE m_perpetualinv FOR SYSTEM NAME mpplivt
(
  m_perpetualinv_id              FOR COLUMN m_piid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  noinventorycount               FOR COLUMN nivtcnt         DECIMAL(10,0) NOT NULL,
  noproductcount                 FOR COLUMN nprdcnt         DECIMAL(10,0) NOT NULL,
  counthighmovement              FOR COLUMN cnthghm         CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextru                                                TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  numberofruns                   FOR COLUMN numruns         DECIMAL(10,0) NOT NULL,
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_perpetualinv_pkey PRIMARY KEY (m_perpetualinv_id),
  CONSTRAINT m_perpetualinv_counthighmovement_check CHECK (counthighmovement in ('Y','N')),
  CONSTRAINT m_perpetualinv_isactive_check CHECK (isactive in ('Y','N'))
)
;

