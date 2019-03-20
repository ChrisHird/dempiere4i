-- Table: s_resourceassignment

-- DROP TABLE s_resourceassignment;

CREATE TABLE s_resourceassignment FOR SYSTEM NAME srscea
(
  s_resourceassignment_id        FOR COLUMN s_raid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  s_resource_id                  FOR COLUMN s_rid           DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  assigndatefrom                 FOR COLUMN asndatf         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  assigndateto                   FOR COLUMN asndatt         TIMESTAMP,
  qty                                                       DECFLOAT(16) DEFAULT 0,
  isconfirmed                    FOR COLUMN isconfd         CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT s_resourceassignment_pkey PRIMARY KEY (s_resourceassignment_id),
  CONSTRAINT s_resourceassignment_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT s_resourceassignment_isconfirmed_check CHECK (isconfirmed in ('Y','N'))
)
;

