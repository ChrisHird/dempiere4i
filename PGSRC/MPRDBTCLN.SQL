-- Table: m_productionbatchline

-- DROP TABLE m_productionbatchline;

CREATE TABLE m_productionbatchline FOR SYSTEM NAME mprdbtcln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isendproduct                   FOR COLUMN isendprd        CHAR(1) NOT NULL DEFAULT 'N',
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_productionbatchline_id       FOR COLUMN m_pbtchlid      DECIMAL(10,0) NOT NULL,
  m_productionbatch_id           FOR COLUMN m_pbtchid       DECIMAL(10,0) NOT NULL,
  qtyreserved                    FOR COLUMN qtyrsvd         DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productionbatchline_key PRIMARY KEY (m_productionbatchline_id),
  CONSTRAINT m_productionbatchline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_productionbatchline_isendproduct_check CHECK (isendproduct in ('Y','N'))
)
;

