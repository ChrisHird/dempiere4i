-- Table: t_bom_indented

-- DROP TABLE t_bom_indented;

CREATE TABLE t_bom_indented FOR SYSTEM NAME tbomidt
(
  t_bom_indented_id              FOR COLUMN t_bomiid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0),
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0),
  cost                                                      DECFLOAT(16),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16),
  currentcostpricell             FOR COLUMN curcstpl        DECFLOAT(16),
  futurecostprice                FOR COLUMN futcstprc       DECFLOAT(16),
  futurecostpricell              FOR COLUMN fcstprcl        DECFLOAT(16),
  isactive                                                  CHAR(1) DEFAULT NULL,
  levelno                                                   DECIMAL(10,0),
  levels                                                    VARCHAR(250) DEFAULT NULL,
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  qtybom                                                    DECFLOAT(16),
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16),
  costfuture                                                DECFLOAT(16),
  sel_product_id                 FOR COLUMN sel_pid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_bom_indented_key PRIMARY KEY (t_bom_indented_id),
  CONSTRAINT t_bom_indented_isactive_check CHECK (isactive in ('Y','N'))
)
;

