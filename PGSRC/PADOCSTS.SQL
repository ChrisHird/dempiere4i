-- Table: pa_documentstatus

-- DROP TABLE pa_documentstatus;

CREATE TABLE pa_documentstatus FOR SYSTEM NAME padocsts
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_form_id                                                DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  name_printcolor_id             FOR COLUMN nm_pclrid       DECIMAL(10,0) NOT NULL,
  name_printfont_id              FOR COLUMN nm_pfntid       DECIMAL(10,0) NOT NULL,
  number_printcolor_id           FOR COLUMN nbrpcid         DECIMAL(10,0) NOT NULL,
  number_printfont_id            FOR COLUMN nbrpfid         DECIMAL(10,0) NOT NULL,
  pa_documentstatus_id           FOR COLUMN pa_dstsid       DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_documentstatus_key PRIMARY KEY (pa_documentstatus_id),
  CONSTRAINT pa_documentstatus_isactive_check CHECK (isactive in ('Y','N'))
)
;

