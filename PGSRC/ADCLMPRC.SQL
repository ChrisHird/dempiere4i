-- Table: ad_columnprocess

-- DROP TABLE ad_columnprocess;

CREATE TABLE ad_columnprocess FOR SYSTEM NAME adclmprc
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_columnprocess_id            FOR COLUMN ad_colpid       DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_columnprocess_key PRIMARY KEY (ad_columnprocess_id),
  CONSTRAINT ad_columnprocess_isactive_check CHECK (isactive in ('Y','N'))
)
;

