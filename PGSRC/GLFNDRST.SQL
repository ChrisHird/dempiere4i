-- Table: gl_fundrestriction

-- DROP TABLE gl_fundrestriction;

CREATE TABLE gl_fundrestriction FOR SYSTEM NAME glfndrst
(
  gl_fundrestriction_id          FOR COLUMN gl_frstid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  gl_fund_id                                                DECIMAL(10,0) NOT NULL,
  c_elementvalue_id              FOR COLUMN c_evid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_fundrestriction_pkey PRIMARY KEY (gl_fundrestriction_id),
  CONSTRAINT gl_fundrestriction_isactive_check CHECK (isactive in ('Y','N'))
)
;

