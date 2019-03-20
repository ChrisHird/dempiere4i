-- Table: pa_reportcolumnset

-- DROP TABLE pa_reportcolumnset;

CREATE TABLE pa_reportcolumnset FOR SYSTEM NAME parptcols
(
  pa_reportcolumnset_id          FOR COLUMN pa_rcsid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  processing                                                CHAR(1) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_reportcolumnset_pkey PRIMARY KEY (pa_reportcolumnset_id),
  CONSTRAINT pa_reportcolumnset_isactive_check CHECK (isactive in ('Y','N'))
)
;

