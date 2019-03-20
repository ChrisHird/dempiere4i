-- Table: ad_element

-- DROP TABLE ad_element;

CREATE TABLE ad_element
(
  ad_element_id                  FOR COLUMN ad_eid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  columnname                                                VARCHAR(30) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  name                                                      VARCHAR(60) NOT NULL,
  printname                                                 VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  po_name                                                   VARCHAR(60),
  po_printname                   FOR COLUMN po_pn           VARCHAR(60),
  po_description                 FOR COLUMN po_d            VARCHAR(255),
  po_help                                                   VARCHAR(2000),
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0),
  fieldlength                    FOR COLUMN fldlen          DECIMAL(10,0),
  ad_reference_value_id          FOR COLUMN ad_rvid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_element_pkey PRIMARY KEY (ad_element_id),
  CONSTRAINT ad_element_isactive_check CHECK (isactive in ('Y','N'))
)
;

