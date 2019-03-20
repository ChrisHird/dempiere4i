-- Table: c_pos

-- DROP TABLE c_pos;

CREATE TABLE c_pos
(
  c_pos_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0) NOT NULL,
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0) NOT NULL,
  c_cashbook_id                  FOR COLUMN c_cbid          DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  printername                    FOR COLUMN prtnam          VARCHAR(60),
  c_poskeylayout_id              FOR COLUMN c_posklid       DECIMAL(10,0),
  ismodifyprice                  FOR COLUMN ismodprc        CHAR(1) NOT NULL DEFAULT 'N',
  c_bpartnercashtrx_id           FOR COLUMN c_bpctid        DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  cashdrawer                                                VARCHAR(120),
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0),
  osk_keylayout_id               FOR COLUMN osk_klid        DECIMAL(10,0),
  osnp_keylayout_id              FOR COLUMN osnp_klid       DECIMAL(10,0),
  autologoutdelay                FOR COLUMN autlodly        DECIMAL(10,0),
  isenableproductlookup          FOR COLUMN iseprdlu        CHAR(1) DEFAULT 'Y',
  isposrequiredpin               FOR COLUMN isposrpin       CHAR(1) DEFAULT 'N',
  invoicerule                    FOR COLUMN invrule         CHAR(1) DEFAULT NULL,
  deliveryrule                   FOR COLUMN dlyrule         CHAR(1) DEFAULT NULL,
  electronicscales               FOR COLUMN elecscales      VARCHAR(120) DEFAULT NULL,
  measurerequestcode             FOR COLUMN mreqcode        VARCHAR(20) DEFAULT NULL,
  cashtransferbankaccount_id     FOR COLUMN ctrnsbaid       DECIMAL(10,0),
  pinentrytimeout                FOR COLUMN pineto          DECIMAL(10,0),
  ticketclassname                FOR COLUMN tktclsnm        VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_pos_pkey PRIMARY KEY (c_pos_id),
  CONSTRAINT c_pos_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_pos_isenableproductlookup_check CHECK (isenableproductlookup in ('Y','N')),
  CONSTRAINT c_pos_isposrequiredpin_check CHECK (isposrequiredpin in ('Y','N'))
)
;

