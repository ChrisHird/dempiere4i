-- Table: dd_freight

-- DROP TABLE dd_freight;

CREATE TABLE dd_freight
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  c_order_id                                                DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_driver_id                   FOR COLUMN dd_drvid        DECIMAL(10,0),
  dd_freight_id                  FOR COLUMN dd_fghid        DECIMAL(10,0) NOT NULL,
  dd_order_id                    FOR COLUMN dd_ordid        DECIMAL(10,0),
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0),
  datedoc                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateordered                    FOR COLUMN datord          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(1),
  docaction                                                 CHAR(2) NOT NULL DEFAULT 'CO',
  docstatus                                                 VARCHAR(2) DEFAULT 'DR',
  documentno                                                VARCHAR(30),
  freightamt                                                DECFLOAT(16),
  freightcostrule                FOR COLUMN fcrule          CHAR(1),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  m_freightcategory_id           FOR COLUMN m_fcid          DECIMAL(10,0),
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0) NOT NULL,
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_inoutbound_id               FOR COLUMN wm_iobid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_freight_key PRIMARY KEY (dd_freight_id),
  CONSTRAINT dd_freight_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT dd_freight_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT dd_freight_processed_check CHECK (processed in ('Y','N'))
)
;

