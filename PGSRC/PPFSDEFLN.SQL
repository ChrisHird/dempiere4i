-- Table: pp_forecastdefinitionline

-- DROP TABLE pp_forecastdefinitionline;

CREATE TABLE pp_forecastdefinitionline FOR SYSTEM NAME ppfsdefln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastdefinitionline_id   FOR COLUMN pp_fdeflid      DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pp_forecastdefinition_id       FOR COLUMN pp_fdefid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  m_product_classification_id    FOR COLUMN m_prdcfnid      DECIMAL(10,0),
  m_product_class_id             FOR COLUMN m_prdclsid      DECIMAL(10,0),
  m_product_group_id             FOR COLUMN m_pgrpid        DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0),
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  factorgamma                    FOR COLUMN factorg         DECFLOAT(16),
  factoralpha                    FOR COLUMN factora         DECFLOAT(16),
  factormultiplier               FOR COLUMN factormlt       DECFLOAT(16),
  factorscale                    FOR COLUMN factorscl       DECFLOAT(16),
  factorbeta                                                DECFLOAT(16),
  factoruser                                                DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastdefinitionline_key PRIMARY KEY (pp_forecastdefinitionline_id),
  CONSTRAINT pp_forecastdefinitionline_isactive_check CHECK (isactive in ('Y','N'))
)
;

