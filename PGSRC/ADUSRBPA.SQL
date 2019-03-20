-- Table: ad_userbpaccess

-- DROP TABLE ad_userbpaccess;

CREATE TABLE ad_userbpaccess FOR SYSTEM NAME adusrbpa
(
  ad_userbpaccess_id             FOR COLUMN ad_usrbpa       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  bpaccesstype                   FOR COLUMN bpacstyp        CHAR(1) NOT NULL,
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0),
  docbasetype                    FOR COLUMN docbsetyp       character(3),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_userbpaccess_pkey PRIMARY KEY (ad_userbpaccess_id),
  CONSTRAINT ad_userbpaccess_isactive_check CHECK (isactive in ('Y','N'))
)
;

