-- Table: m_discountschemaline

-- DROP TABLE m_discountschemaline;

CREATE TABLE m_discountschemaline FOR SYSTEM NAME mdscsln
(
  m_discountschemaline_id        FOR COLUMN m_dslid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_discountschema_id            FOR COLUMN m_dsid          DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  conversiondate                 FOR COLUMN cvndat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  list_base                                                 CHAR(1) NOT NULL,
  list_addamt                    FOR COLUMN lstaamt         DECFLOAT(16) NOT NULL DEFAULT 0,
  list_discount                  FOR COLUMN lstdsc          DECFLOAT(16) NOT NULL,
  list_rounding                  FOR COLUMN lstrnd          CHAR(1) NOT NULL,
  list_minamt                    FOR COLUMN lstminamt       DECFLOAT(16) NOT NULL DEFAULT 0,
  list_maxamt                    FOR COLUMN lstmaxamt       DECFLOAT(16) NOT NULL DEFAULT 0,
  list_fixed                                                DECFLOAT(16) DEFAULT 0,
  std_base                                                  CHAR(1) NOT NULL,
  std_addamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  std_discount                   FOR COLUMN stddsc          DECFLOAT(16) NOT NULL,
  std_rounding                   FOR COLUMN stdrnd          CHAR(1) NOT NULL,
  std_minamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  std_maxamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  std_fixed                                                 DECFLOAT(16) DEFAULT 0,
  limit_base                                                CHAR(1) NOT NULL,
  limit_addamt                   FOR COLUMN lmtaamt         DECFLOAT(16) NOT NULL DEFAULT 0,
  limit_discount                 FOR COLUMN lmtdsc          DECFLOAT(16) NOT NULL,
  limit_rounding                 FOR COLUMN lmtrnd          CHAR(1) NOT NULL,
  limit_minamt                   FOR COLUMN lmtminamt       DECFLOAT(16) NOT NULL DEFAULT 0,
  limit_maxamt                   FOR COLUMN lmtmaxamt       DECFLOAT(16) NOT NULL DEFAULT 0,
  limit_fixed                    FOR COLUMN lmtf            DECFLOAT(16) DEFAULT 0,
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0) NOT NULL,
  classification                 FOR COLUMN clsfn           VARCHAR(12),
  group2                                                    VARCHAR(255),
  group1                                                    VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_discountschemaline_pkey PRIMARY KEY (m_discountschemaline_id),
  CONSTRAINT m_discountschemaline_isactive_check CHECK (isactive in ('Y','N'))
)
;

