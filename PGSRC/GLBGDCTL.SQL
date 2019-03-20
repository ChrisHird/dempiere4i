-- Table: gl_budgetcontrol

-- DROP TABLE gl_budgetcontrol;

CREATE TABLE gl_budgetcontrol FOR SYSTEM NAME glbgdctl
(
  gl_budgetcontrol_id            FOR COLUMN g_bgdcid        DECIMAL(10,0) NOT NULL,
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
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  gl_budget_id                   FOR COLUMN gl_bid          DECIMAL(10,0) NOT NULL,
  commitmenttype                 FOR COLUMN cmttype         CHAR(1) NOT NULL,
  isbeforeapproval               FOR COLUMN isbfappr        CHAR(1) NOT NULL DEFAULT 'N',
  budgetcontrolscope             FOR COLUMN bgtctls         CHAR(1) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_budgetcontrol_pkey PRIMARY KEY (gl_budgetcontrol_id),
  CONSTRAINT gl_budgetcontrol_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT gl_budgetcontrol_isbeforeapproval_check CHECK (isbeforeapproval in ('Y','N'))
)
;

