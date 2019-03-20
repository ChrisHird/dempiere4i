-- Table: pa_report

-- DROP TABLE pa_report;

CREATE TABLE pa_report
(
  pa_report_id                   FOR COLUMN pa_rid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  pa_reportlineset_id            FOR COLUMN pa_rlsid        DECIMAL(10,0) NOT NULL,
  pa_reportcolumnset_id          FOR COLUMN pa_rcsid        DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1) NOT NULL,
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  listsources                    FOR COLUMN lstsrcs         CHAR(1),
  listtrx                                                   CHAR(1),
  jasperprocess_id               FOR COLUMN jaspid          DECIMAL(10,0),
  jasperprocessing               FOR COLUMN jaspprc         CHAR(1),
  pa_reportcube_id               FOR COLUMN pa_rptcid       DECIMAL(10,0),
  preperiodname                  FOR COLUMN prepdnm         VARCHAR(20),
  posperiodname                  FOR COLUMN pospdnm         VARCHAR(20),
  ad_printformatheader_id        FOR COLUMN Ad_pfhid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_report_pkey PRIMARY KEY (pa_report_id),
  CONSTRAINT pa_report_isactive_check CHECK (isactive in ('Y','N'))
)
;

