-- Table: s_resourceunavailable

-- DROP TABLE s_resourceunavailable;

CREATE TABLE s_resourceunavailable FOR SYSTEM NAME srsceua
(
  s_resourceunavailable_id       FOR COLUMN s_ruaid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  s_resource_id                  FOR COLUMN s_rid           DECIMAL(10,0) NOT NULL,
  datefro                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateto                                                    TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT s_resourceunavailable_pkey PRIMARY KEY (s_resourceunavailable_id),
  CONSTRAINT s_resourceunavailable_isactive_check CHECK (isactive in ('Y','N'))
)
;

