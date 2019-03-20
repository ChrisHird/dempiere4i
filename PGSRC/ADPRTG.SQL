-- Table: ad_printgraph

-- DROP TABLE ad_printgraph;

CREATE TABLE ad_printgraph FOR SYSTEM NAME adprtg
(
  ad_printgraph_id               FOR COLUMN ad_pgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  graphtype                                                 CHAR(1) NOT NULL,
  description_printformatitem_id FOR COLUMN despfiid        DECIMAL(10,0) NOT NULL,
  data_printformatitem_id        FOR COLUMN dtapfiid        DECIMAL(10,0) NOT NULL,
  data1_printformatitem_id       FOR COLUMN dta1pfiid       DECIMAL(10,0),
  data2_printformatitem_id       FOR COLUMN dta2pfiid       DECIMAL(10,0),
  data3_printformatitem_id       FOR COLUMN dta3pfiid       DECIMAL(10,0),
  data4_printformatitem_id       FOR COLUMN dta4pfiid       DECIMAL(10,0),
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printgraph_pkey PRIMARY KEY (ad_printgraph_id),
  CONSTRAINT ad_printgraph_isactive_check CHECK (isactive in ('Y','N'))
)
;

