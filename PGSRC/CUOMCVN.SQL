-- Table: c_uom_conversion

-- DROP TABLE c_uom_conversion;

CREATE TABLE c_uom_conversion FOR SYSTEM NAME cuomcvn
(
  c_uom_conversion_id            FOR COLUMN c_uomcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  c_uom_to_id                    FOR COLUMN c_uomtoid       DECIMAL(10,0) NOT NULL,
  multiplyrate                   FOR COLUMN multrte         DECFLOAT(16) NOT NULL DEFAULT 0,
  dividerate                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_uom_conversion_pkey PRIMARY KEY (c_uom_conversion_id),
  CONSTRAINT c_uom_conversion_isactive_check CHECK (isactive in ('Y','N'))
)
;

