-- Table: ad_table_process

-- DROP TABLE ad_table_process;

CREATE TABLE ad_table_process FOR SYSTEM NAME adtblprc
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  entitytype                                                VARCHAR(255) NOT NULL DEFAULT 'U',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_table_process_key PRIMARY KEY (ad_process_id, ad_table_id),
  CONSTRAINT ad_table_process_isactive_check CHECK (isactive in ('Y','N'))
)
;

