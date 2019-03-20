-- Table: a_registrationproduct

-- DROP TABLE a_registrationproduct;

CREATE TABLE a_registrationproduct FOR SYSTEM NAME aregprd
(
  a_registrationattribute_id     FOR COLUMN a_raid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_registrationproduct_pkey PRIMARY KEY (a_registrationattribute_id, m_product_id),
  CONSTRAINT a_registrationproduct_isactive_check CHECK (isactive in ('Y','N'))
)
;

