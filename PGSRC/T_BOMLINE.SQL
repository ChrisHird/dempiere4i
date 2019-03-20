-- Table: t_bomline

-- DROP TABLE t_bomline;

CREATE TABLE t_bomline
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1),
  levelno                                                   DECIMAL(10,0),
  levels                                                    VARCHAR(250),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  pp_product_bomline_id          FOR COLUMN pp_pbomlid      DECIMAL(10,0),
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0),
  t_bomline_id                   FOR COLUMN t_bomlid        DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  sel_product_id                 FOR COLUMN sel_pid         DECIMAL(10,0) NOT NULL,
  implosion                                                 CHAR(1) DEFAULT 'N',
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0),
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16),
  currentcostpricell             FOR COLUMN curcstpl        DECFLOAT(16),
  qtybom                                                    DECFLOAT(16),
  cost                                                      VARCHAR(22),
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0),
  costingmethod                  FOR COLUMN cstmthd         CHAR(1),
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0),
  futurecostprice                FOR COLUMN futcstprc       DECFLOAT(16),
  futurecostpricell              FOR COLUMN fcstprcl        DECFLOAT(16),
  iscostfrozen                   FOR COLUMN iscstfz         CHAR(1),
  coststandard                   FOR COLUMN cststd          DECFLOAT(16),
  qtyrequired                    FOR COLUMN qtyreq          DECFLOAT(16),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  datetrx                                                   TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_bomline_pkey PRIMARY KEY (t_bomline_id),
  CONSTRAINT t_bomline_implosion_check CHECK (implosion in ('Y','N')),
  CONSTRAINT t_bomline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT t_bomline_iscostfrozen_check CHECK (iscostfrozen in ('Y','N'))
)
;

