-- Table: m_warehouse_acct

-- DROP TABLE m_warehouse_acct;

CREATE TABLE m_warehouse_acct FOR SYSTEM NAME mwhsea
(
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  w_inventory_acct               FOR COLUMN w_ia            DECIMAL(10,0) NOT NULL,
  w_invactualadjust_acct         FOR COLUMN w_iaaa          DECIMAL(10,0) NOT NULL,
  w_differences_acct             FOR COLUMN w_da            DECIMAL(10,0) NOT NULL,
  w_revaluation_acct             FOR COLUMN w_ra            DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_warehouse_acct_pkey PRIMARY KEY (m_warehouse_id, c_acctschema_id),
  CONSTRAINT m_warehouse_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

