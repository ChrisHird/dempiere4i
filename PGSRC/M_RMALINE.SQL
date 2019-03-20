-- Table: m_rmaline

-- DROP TABLE m_rmaline;

CREATE TABLE m_rmaline
(
  m_rmaline_id                   FOR COLUMN m_rmalid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_rma_id                                                  DECIMAL(10,0) NOT NULL,
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  amt                                                       DECIMAL(22,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  line                                                      DECIMAL(10,0) NOT NULL DEFAULT 0,
  linenetamt                                                DECIMAL(22,0),
  qtydelivered                   FOR COLUMN qtydel          DECIMAL(22,0),
  qtyinvoiced                    FOR COLUMN qtyinv          DECFLOAT(16),
  ref_rmaline_id                 FOR COLUMN ref_rmalid      DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_rmaline_pkey PRIMARY KEY (m_rmaline_id)
)
  ;
