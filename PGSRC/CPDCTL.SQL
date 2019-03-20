-- Table: c_periodcontrol

-- DROP TABLE c_periodcontrol;

CREATE TABLE c_periodcontrol FOR SYSTEM NAME cpdctl
(
  c_periodcontrol_id             FOR COLUMN c_pcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  docbasetype                    FOR COLUMN docbsetyp       character(3) NOT NULL,
  periodstatus                   FOR COLUMN persts          CHAR(1),
  periodaction                   FOR COLUMN peract          CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_periodcontrol_pkey PRIMARY KEY (c_periodcontrol_id),
  CONSTRAINT c_periodcontrol_isactive_check CHECK (isactive in ('Y','N'))
)
;

