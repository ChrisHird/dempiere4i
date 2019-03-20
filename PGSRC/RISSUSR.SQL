-- Table: r_issueuser

-- DROP TABLE r_issueuser;

CREATE TABLE r_issueuser FOR SYSTEM NAME rissusr
(
  r_issueuser_id                 FOR COLUMN r_issusrid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  username                                                  VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_user_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_issueuser_pkey PRIMARY KEY (r_issueuser_id),
  CONSTRAINT r_issueuser_isactive_check CHECK (isactive in ('Y','N'))
)
;

