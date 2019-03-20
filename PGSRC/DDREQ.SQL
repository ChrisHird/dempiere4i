-- Table: dd_requirement

-- DROP TABLE dd_requirement;

CREATE TABLE dd_requirement FOR SYSTEM NAME ddreq
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_requirementtype_id          FOR COLUMN dd_reqtid       DECIMAL(10,0) NOT NULL,
  dd_requirement_id              FOR COLUMN dd_reqid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  ismandatory                    FOR COLUMN ismand          CHAR(1),
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_requirement_key PRIMARY KEY (dd_requirement_id),
  CONSTRAINT dd_requirement_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT dd_requirement_ismandatory_check CHECK (ismandatory in ('Y','N'))
)
;

