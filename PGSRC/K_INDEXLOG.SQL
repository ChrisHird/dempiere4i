-- Table: k_indexlog

-- DROP TABLE k_indexlog;

CREATE TABLE k_indexlog
(
  k_indexlog_id                  FOR COLUMN k_idxlid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  indexquery                                                VARCHAR(255) NOT NULL,
  indexqueryresult               FOR COLUMN idxqryr         DECIMAL(10,0) NOT NULL DEFAULT 0,
  querysource                    FOR COLUMN qrysrc          CHAR(1) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_indexlog_pkey PRIMARY KEY (k_indexlog_id),
  CONSTRAINT k_indexlog_isactive_check CHECK (isactive in ('Y','N'))
)
;

