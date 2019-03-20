-- Table: m_product_category_acct

-- DROP TABLE m_product_category_acct;

CREATE TABLE m_product_category_acct FOR SYSTEM NAME mprodcata
(
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  p_revenue_acct                 FOR COLUMN p_ra            DECIMAL(10,0) NOT NULL,
  p_expense_acct                 FOR COLUMN p_ea            DECIMAL(10,0) NOT NULL,
  p_asset_acct                   FOR COLUMN p_aa            DECIMAL(10,0) NOT NULL,
  p_cogs_acct                    FOR COLUMN p_cogsa         DECIMAL(10,0) NOT NULL,
  p_purchasepricevariance_acct   FOR COLUMN p_ppva          DECIMAL(10,0) NOT NULL,
  p_invoicepricevariance_acct    FOR COLUMN p_ipva          DECIMAL(10,0) NOT NULL,
  p_tradediscountrec_acct        FOR COLUMN p_tdra          DECIMAL(10,0) NOT NULL,
  p_tradediscountgrant_acct      FOR COLUMN p_tdga          DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  costingmethod                  FOR COLUMN cstmthd         CHAR(1),
  costinglevel                   FOR COLUMN cstlvl          CHAR(1),
  p_inventoryclearing_acct       FOR COLUMN p_ivtca         DECIMAL(10,0),
  p_costadjustment_acct          FOR COLUMN p_cstadja       DECIMAL(10,0),
  p_floorstock_acct              FOR COLUMN p_fstka         DECIMAL(10,0),
  p_wip_acct                                                DECIMAL(10,0),
  p_methodchangevariance_acct    FOR COLUMN p_mcvact        DECIMAL(10,0),
  p_usagevariance_acct           FOR COLUMN p_usgva         DECIMAL(10,0),
  p_ratevariance_acct            FOR COLUMN p_rteva         DECIMAL(10,0),
  p_mixvariance_acct             FOR COLUMN p_mixva         DECIMAL(10,0),
  p_costofproduction_acct        FOR COLUMN p_cstpdna       DECIMAL(10,0),
  p_labor_acct                   FOR COLUMN p_labora        DECIMAL(10,0),
  p_burden_acct                  FOR COLUMN p_bdnact        DECIMAL(10,0),
  p_outsideprocessing_acct       FOR COLUMN p_oprca         DECIMAL(10,0),
  p_overhead_acct                FOR COLUMN p_oha           DECIMAL(10,0),
  p_scrap_acct                   FOR COLUMN p_scpa          DECIMAL(10,0),
  p_averagecostvariance_acct     FOR COLUMN p_avgcva        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_category_acct_pkey PRIMARY KEY (m_product_category_id, c_acctschema_id),
  CONSTRAINT m_product_category_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

