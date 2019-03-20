-- Table: r_group

-- DROP TABLE r_group;

CREATE TABLE r_group
(
  r_group_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  m_bom_id                                                  DECIMAL(10,0),
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_group_pkey PRIMARY KEY (r_group_id),
  CONSTRAINT r_group_isactive_check CHECK (isactive in ('Y','N'))
)
;

