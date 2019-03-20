-- Table: c_contactactivity

-- DROP TABLE c_contactactivity;

CREATE TABLE c_contactactivity FOR SYSTEM NAME ccntact
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_contactactivity_id           FOR COLUMN c_cntactid      DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  startdate                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  enddate                                                   TIMESTAMP,
  comments                                                  CLOB,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  contactactivitytype            FOR COLUMN cntacttyp       VARCHAR(10) NOT NULL,
  iscomplete                                                CHAR(1) DEFAULT NULL,
  c_opportunity_id               FOR COLUMN c_opnid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_contactactivity_key PRIMARY KEY (c_contactactivity_id),
  CONSTRAINT c_contactactivity_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_contactactivity_iscomplete_check CHECK (iscomplete in ('Y','N'))
)
;

