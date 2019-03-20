-- Table: r_requestupdates

-- DROP TABLE r_requestupdates;

CREATE TABLE r_requestupdates FOR SYSTEM NAME rrequpds
(
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  r_request_id                   FOR COLUMN r_rid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_requestupdates_pkey PRIMARY KEY (ad_user_id, r_request_id),
  CONSTRAINT r_requestupdates_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT r_requestupdates_isselfservice_check CHECK (isselfservice in ('Y','N'))
)
;

