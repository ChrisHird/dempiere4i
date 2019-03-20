-- Table: m_pricelist

-- DROP TABLE m_pricelist;

CREATE TABLE m_pricelist FOR SYSTEM NAME mplst
(
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  basepricelist_id               FOR COLUMN bprclst         DECIMAL(10,0),
  istaxincluded                  FOR COLUMN itinc           CHAR(1) NOT NULL DEFAULT 'N',
  issopricelist                  FOR COLUMN issoplst        CHAR(1) NOT NULL DEFAULT 'Y',
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  enforcepricelimit              FOR COLUMN enfprclmt       CHAR(1) NOT NULL DEFAULT 'N',
  priceprecision                 FOR COLUMN prcprec         DECIMAL(10,0) NOT NULL DEFAULT 2,
  ismandatory                    FOR COLUMN ismand          CHAR(1) DEFAULT 'N',
  ispresentforproduct            FOR COLUMN isprfprd        CHAR(1) DEFAULT 'N',
  isnetprice                                                CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_pricelist_pkey PRIMARY KEY (m_pricelist_id),
  CONSTRAINT m_pricelist_enforcepricelimit_check CHECK (enforcepricelimit in ('Y','N')),
  CONSTRAINT m_pricelist_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_pricelist_isnetprice_check CHECK (isnetprice in ('Y','N')),
  CONSTRAINT m_pricelist_issopricelist_check CHECK (issopricelist in ('Y','N')),
  CONSTRAINT m_pricelist_istaxincluded_check CHECK (istaxincluded in ('Y','N'))
)
;

