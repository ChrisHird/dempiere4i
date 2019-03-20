-- Table: gl_budget

-- DROP TABLE gl_budget;

CREATE TABLE gl_budget
(
  gl_budget_id                   FOR COLUMN gl_bid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isprimary                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  budgetstatus                   FOR COLUMN bgtsts          CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_budget_pkey PRIMARY KEY (gl_budget_id),
  CONSTRAINT gl_budget_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT gl_budget_isprimary_check CHECK (isprimary in ('Y','N'))
)
;

