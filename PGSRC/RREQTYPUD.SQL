-- Table: r_requesttypeupdates

-- DROP TABLE r_requesttypeupdates;

CREATE TABLE r_requesttypeupdates FOR SYSTEM NAME rreqtypud
(
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_requesttypeupdates_pkey PRIMARY KEY (ad_user_id, r_requesttype_id),
  CONSTRAINT r_requesttypeupdates_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT r_requesttypeupdates_isselfservice_check CHECK (isselfservice in ('Y','N'))
)
;

