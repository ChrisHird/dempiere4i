-- Table: m_inout

-- DROP TABLE m_inout;

CREATE TABLE m_inout
(
  m_inout_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  documentno                                                VARCHAR(30) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  docstatus                                                 CHAR(2) NOT NULL,
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_order_id                                                DECIMAL(10,0),
  dateordered                    FOR COLUMN datord          TIMESTAMP,
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'N',
  movementtype                   FOR COLUMN movtyp          CHAR(2) NOT NULL,
  movementdate                   FOR COLUMN movdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  poreference                    FOR COLUMN poref           VARCHAR(20),
  deliveryrule                   FOR COLUMN dlyrule         CHAR(1) NOT NULL,
  freightcostrule                FOR COLUMN fcrule          CHAR(1) NOT NULL,
  freightamt                                                DECFLOAT(16) DEFAULT 0,
  deliveryviarule                FOR COLUMN dlyvrule        CHAR(1) NOT NULL,
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  chargeamt                                                 DECFLOAT(16) DEFAULT 0,
  priorityrule                   FOR COLUMN ptyrule         CHAR(1) NOT NULL,
  dateprinted                    FOR COLUMN datprt          TIMESTAMP,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  createfrom                                                CHAR(1),
  generateto                                                CHAR(1),
  sendemail                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ad_user_id                                                DECIMAL(10,0),
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  nopackages                                                DECIMAL(10,0),
  pickdate                                                  TIMESTAMP,
  shipdate                                                  TIMESTAMP,
  trackingno                                                VARCHAR(60),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  datereceived                   FOR COLUMN datrcv          TIMESTAMP,
  isintransit                    FOR COLUMN isintrans       CHAR(1) NOT NULL DEFAULT 'N',
  ref_inout_id                   FOR COLUMN refioid         DECIMAL(10,0),
  createconfirm                  FOR COLUMN crtcfm          CHAR(1),
  createpackage                  FOR COLUMN crtpkg          CHAR(1),
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  isindispute                    FOR COLUMN isdispute       CHAR(1) NOT NULL DEFAULT 'N',
  volume                                                    DECFLOAT(16),
  weight                                                    DECFLOAT(16),
  m_rma_id                                                  DECIMAL(10,0),
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  isdropship                                                CHAR(1) DEFAULT 'N',
  dropship_bpartner_id           FOR COLUMN drpsbpid        DECIMAL(10,0),
  dropship_location_id           FOR COLUMN drpslid         DECIMAL(10,0),
  dropship_user_id               FOR COLUMN drpsuid         DECIMAL(10,0),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  c_pos_id                                                  DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  barcodescanner                 FOR COLUMN bcdescn         CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  m_freightcategory_id           FOR COLUMN m_fcid          DECIMAL(10,0),
  CONSTRAINT m_inout_pkey PRIMARY KEY (m_inout_id),
  CONSTRAINT m_inout_createfrom_check CHECK (createfrom in ('Y','N')),
  CONSTRAINT m_inout_generateto_check CHECK (generateto in ('Y','N')),
  CONSTRAINT m_inout_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_inout_isdropship_check CHECK (isdropship in ('Y','N')),
  CONSTRAINT m_inout_isprinted_check CHECK (isprinted in ('Y','N')),
  CONSTRAINT m_inout_issotrx_check CHECK (issotrx in ('Y','N')),
  CONSTRAINT m_inout_processed_check CHECK (processed in ('Y','N'))
)
;

