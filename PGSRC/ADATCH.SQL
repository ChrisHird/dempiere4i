-- Table: ad_attachment

-- DROP TABLE ad_attachment;

CREATE TABLE ad_attachment FOR SYSTEM NAME adatch
(
  ad_attachment_id               FOR COLUMN ad_atcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  title                                                     VARCHAR(60) NOT NULL,
  binarydata                                                BLOB,
  textmsg                                                   VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_attachment_pkey PRIMARY KEY (ad_attachment_id),
  CONSTRAINT ad_attachment_isactive_check CHECK (isactive in ('Y','N'))
)
;

