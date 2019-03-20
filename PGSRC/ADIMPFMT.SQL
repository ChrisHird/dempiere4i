-- Table: ad_impformat

-- DROP TABLE ad_impformat;

CREATE TABLE ad_impformat FOR SYSTEM NAME adimpfmt
(
  ad_impformat_id                FOR COLUMN ad_ifid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  formattype                                                CHAR(1) NOT NULL,
  processing                                                CHAR(1) NOT NULL,
  separatorchar                  FOR COLUMN sepchar         VARCHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  classname                                                 VARCHAR(255) DEFAULT NULL,
  CONSTRAINT ad_impformat_pkey PRIMARY KEY (ad_impformat_id),
  CONSTRAINT adtable_adimpformat FOREIGN KEY (ad_table_id)
      REFERENCES ad_table (ad_table_id)
      ON UPDATE NO ACTION ON DELETE NO ACTION ,
  CONSTRAINT ad_impformat_isactive_check CHECK (isactive in ('Y','N'))
)
;
ALTER TABLE ad_impformat

-- Index: ad_impformat_name

-- DROP INDEX ad_impformat_name;

CREATE UNIQUE INDEX ad_impformat_name
  ON ad_impformat
  USING btree
  (name COLLATE pg_catalog."default");

