-- Table: u_posterminal

-- DROP TABLE u_posterminal;

CREATE TABLE u_posterminal FOR SYSTEM NAME upostm
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  autolock                                                  CHAR(1) NOT NULL DEFAULT 'N',
  card_bankaccount_id            FOR COLUMN card_bid        DECIMAL(10,0),
  cardtransferbankaccount_id     FOR COLUMN ctrnsbid        DECIMAL(10,0),
  cardtransfercashbook_id        FOR COLUMN cdtrncbid       DECIMAL(10,0),
  cardtransfertype               FOR COLUMN ctrnstyp        CHAR(1),
  cashbooktransfertype           FOR COLUMN cbttyp          CHAR(1) NOT NULL,
  cashtransferbankaccount_id     FOR COLUMN ctrnsbaid       DECIMAL(10,0),
  cashtransfercashbook_id        FOR COLUMN ctrnscbid       DECIMAL(10,0),
  c_cashbook_id                  FOR COLUMN c_cbid          DECIMAL(10,0) NOT NULL,
  c_cashbpartner_id              FOR COLUMN c_cbpid         DECIMAL(10,0) NOT NULL,
  check_bankaccount_id           FOR COLUMN check_bid       DECIMAL(10,0),
  checktransferbankaccount_id    FOR COLUMN chktbaid        DECIMAL(10,0),
  checktransfercashbook_id       FOR COLUMN chktcbid        DECIMAL(10,0),
  checktransfertype              FOR COLUMN chkttyp         CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  c_templatebpartner_id          FOR COLUMN c_tmplbpid      DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  lastlocktime                   FOR COLUMN lstlcktim       TIMESTAMP,
  locked                                                    CHAR(1) DEFAULT 'N',
  locktime                                                  DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  name                                                      VARCHAR(60),
  po_pricelist_id                FOR COLUMN po_plid         DECIMAL(10,0),
  printername                    FOR COLUMN prtnam          VARCHAR(60),
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  so_pricelist_id                FOR COLUMN sp_prclid       DECIMAL(10,0),
  unlockingtime                  FOR COLUMN ulcktim         TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  u_posterminal_id               FOR COLUMN u_postmid       DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT u_posterminal_pkey PRIMARY KEY (u_posterminal_id),
  CONSTRAINT u_posterminal_autolock_check CHECK (autolock in ('Y','N')),
  CONSTRAINT u_posterminal_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT u_posterminal_locked_check CHECK (locked in ('Y','N'))
)
;

