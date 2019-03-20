-- Table: r_status

-- DROP TABLE r_status;

CREATE TABLE r_status
(
  r_status_id                    FOR COLUMN r_stsid         DECIMAL(10,0) NOT NULL,
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
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isopen                                                    CHAR(1) NOT NULL DEFAULT 'N',
  isclosed                                                  CHAR(1) NOT NULL DEFAULT 'N',
  value                                                     VARCHAR(40) NOT NULL,
  next_status_id                 FOR COLUMN next_stsid      DECIMAL(10,0),
  update_status_id               FOR COLUMN updstsid        DECIMAL(10,0),
  timeoutdays                    FOR COLUMN timodays        DECIMAL(10,0),
  iswebcanupdate                 FOR COLUMN iswcupd         CHAR(1) NOT NULL DEFAULT 'Y',
  isfinalclose                   FOR COLUMN isfnalcl        CHAR(1) NOT NULL DEFAULT 'N',
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  r_statuscategory_id            FOR COLUMN r_stscid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_status_pkey PRIMARY KEY (r_status_id),
  CONSTRAINT r_status_isactive_check CHECK (isactive in ('Y','N'))
)
;

