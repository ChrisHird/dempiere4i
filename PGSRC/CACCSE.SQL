-- Table: c_acctschema_element

-- DROP TABLE c_acctschema_element;

CREATE TABLE c_acctschema_element FOR SYSTEM NAME caccse
(
  c_acctschema_element_id        FOR COLUMN c_aseid         DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  elementtype                    FOR COLUMN elmtyp          CHAR(2) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  c_element_id                   FOR COLUMN c_eid           DECIMAL(10,0),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ismandatory                    FOR COLUMN ismand          CHAR(1) NOT NULL DEFAULT 'N',
  isbalanced                                                CHAR(1) NOT NULL DEFAULT 'N',
  org_id                                                    DECIMAL(10,0),
  c_elementvalue_id              FOR COLUMN c_evid          DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_acctschema_element_pkey PRIMARY KEY (c_acctschema_element_id),
  CONSTRAINT c_acctschema_element_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_acctschema_element_isbalanced_check CHECK (isbalanced in ('Y','N')),
  CONSTRAINT c_acctschema_element_ismandatory_check CHECK (ismandatory in ('Y','N'))
)
;

