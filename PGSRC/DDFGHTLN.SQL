-- Table: dd_freightline

-- DROP TABLE dd_freightline;

CREATE TABLE dd_freightline FOR SYSTEM NAME ddfghtln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  c_locfrom_id                   FOR COLUMN c_lfid          DECIMAL(10,0),
  c_locto_id                                                DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_freightline_id              FOR COLUMN dd_fhglid       DECIMAL(10,0) NOT NULL,
  dd_freight_id                  FOR COLUMN dd_fghid        DECIMAL(10,0),
  freightamt                                                DECFLOAT(16) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  line                                                      DECIMAL(10,0) NOT NULL,
  m_freightcategory_id           FOR COLUMN m_fcid          DECIMAL(10,0),
  m_freight_id                   FOR COLUMN m_fhtid         DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  shipdate                                                  TIMESTAMP,
  totalamt                                                  DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  volume                                                    DECFLOAT(16),
  volume_uom_id                  FOR COLUMN vol_umid     DECIMAL(10,0),
  weight                                                    DECFLOAT(16),
  weight_uom_id                  FOR COLUMN wgtumid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_freightline_key PRIMARY KEY (dd_freightline_id),
  CONSTRAINT dd_freightline_isactive_check CHECK (isactive in ('Y','N'))
)
;

