-- Table: m_shipper

-- DROP TABLE m_shipper;

CREATE TABLE m_shipper
(
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  trackingurl                    FOR COLUMN trkurl          VARCHAR(120),
  calculationclass               FOR COLUMN calccls         VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_shipper_pkey PRIMARY KEY (m_shipper_id),
  CONSTRAINT m_shipper_isactive_check CHECK (isactive in ('Y','N'))
)
;

