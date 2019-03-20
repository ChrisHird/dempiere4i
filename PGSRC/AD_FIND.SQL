-- Table: ad_find

-- DROP TABLE ad_find;

CREATE TABLE ad_find
(
  ad_find_id                                                DECIMAL(10,0) NOT NULL,
  find_id                                                   DECFLOAT(16) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  andor                                                     CHAR(1) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  operation                                                 CHAR(2) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  value2                                                    VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_find_pkey PRIMARY KEY (ad_find_id),
  CONSTRAINT ad_find_isactive_check CHECK (isactive in ('Y','N'))
)
;

