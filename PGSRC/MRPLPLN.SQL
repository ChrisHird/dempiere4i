-- Table: m_replenishplan

-- DROP TABLE m_replenishplan;

CREATE TABLE m_replenishplan FOR SYSTEM NAME mrplpln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  datefinish                                                TIMESTAMP,
  datestart                                                 TIMESTAMP,
  generatereport                 FOR COLUMN genrpt          character(20),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_replenishplan_id             FOR COLUMN m_rplplid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60),
  processing                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isdeleteunconfirmedproduction  FOR COLUMN isdltucpdn      CHAR(1) NOT NULL DEFAULT 'N',
  isdeleteplannedpo              FOR COLUMN isdltplnpo      CHAR(1) NOT NULL DEFAULT 'N',
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  plannedproductionreport        FOR COLUMN plnprdrpt       CHAR(1) DEFAULT NULL,
  suggestedrequisitionreport     FOR COLUMN sgnreqrpt       CHAR(1) DEFAULT NULL,
  c_doctype_plannedorder         FOR COLUMN c_dtpord        DECIMAL(10,0),
  c_doctype_requisition          FOR COLUMN c_dtreq         DECIMAL(10,0),
  c_doctype_po                   FOR COLUMN c_dtpo          DECIMAL(10,0),
  c_doctype_confirmedorder       FOR COLUMN c_dtcfmo        DECIMAL(10,0),
  replenishplaninitialsetup      FOR COLUMN rpplnis         CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_replenishplan_key PRIMARY KEY (m_replenishplan_id),
  CONSTRAINT m_replenishplan_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_replenishplan_isdeleteplannedpo_check CHECK (isdeleteplannedpo in ('Y','N')),
  CONSTRAINT m_replenishplan_isdeleteunconfirmedproduction_check CHECK (isdeleteunconfirmedproduction in ('Y','N'))
)
;

