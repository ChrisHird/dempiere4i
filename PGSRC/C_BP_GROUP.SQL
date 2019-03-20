-- Table: c_bp_group

-- DROP TABLE c_bp_group;

CREATE TABLE c_bp_group
(
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  isconfidentialinfo             FOR COLUMN isconfinf       CHAR(1) NOT NULL DEFAULT 'N',
  prioritybase                   FOR COLUMN ptybase         CHAR(1),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  po_pricelist_id                FOR COLUMN po_plid         DECIMAL(10,0),
  m_discountschema_id            FOR COLUMN m_dsid          DECIMAL(10,0),
  po_discountschema_id           FOR COLUMN po_dsid         DECIMAL(10,0),
  creditwatchpercent             FOR COLUMN crdwpc          DECFLOAT(16),
  pricematchtolerance            FOR COLUMN pmtchtol        DECFLOAT(16),
  c_dunning_id                   FOR COLUMN c_did           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_group_pkey PRIMARY KEY (c_bp_group_id),
  CONSTRAINT c_bp_group_isactive_check CHECK (isactive in ('Y','N'))
)
;

