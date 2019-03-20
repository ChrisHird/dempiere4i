-- Table: c_salesregion

-- DROP TABLE c_salesregion;

CREATE TABLE c_salesregion FOR SYSTEM NAME csrgn
(
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0) NOT NULL,
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
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_salesregion_pkey PRIMARY KEY (c_salesregion_id),
  CONSTRAINT c_salesregion_isactive_check CHECK (isactive in ('Y','N'))
)
;

