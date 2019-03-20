-- Table: c_doctypecounter

-- DROP TABLE c_doctypecounter;

CREATE TABLE c_doctypecounter FOR SYSTEM NAME cdtypctr
(
  c_doctypecounter_id            FOR COLUMN c_dtcid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  counter_c_doctype_id           FOR COLUMN ctr_cdtid       DECIMAL(10,0),
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  docaction                                                 CHAR(2),
  iscreatecounter                FOR COLUMN iscrtcntr       CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_doctypecounter_pkey PRIMARY KEY (c_doctypecounter_id),
  CONSTRAINT c_doctypecounter_isactive_check CHECK (isactive in ('Y','N'))
)
;

