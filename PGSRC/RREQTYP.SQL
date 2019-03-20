-- Table: r_requesttype

-- DROP TABLE r_requesttype;

CREATE TABLE r_requesttype FOR SYSTEM NAME rreqtyp
(
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'Y',
  duedatetolerance               FOR COLUMN ddattol         DECIMAL(10,0) NOT NULL DEFAULT 7,
  isemailwhenoverdue             FOR COLUMN isemwodue       CHAR(1) NOT NULL DEFAULT 'N',
  isemailwhendue                 FOR COLUMN isemwdue        CHAR(1) NOT NULL DEFAULT 'N',
  isinvoiced                                                CHAR(1),
  autoduedatedays                FOR COLUMN autddays        DECIMAL(10,0),
  confidentialtype               FOR COLUMN conftype        CHAR(1) NOT NULL DEFAULT 'C',
  isautochangerequest            FOR COLUMN isatocreq       CHAR(1) NOT NULL DEFAULT 'N',
  isconfidentialinfo             FOR COLUMN isconfinf       CHAR(1) NOT NULL DEFAULT 'N',
  r_statuscategory_id            FOR COLUMN r_stscid        DECIMAL(10,0) NOT NULL,
  isindexed                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_requesttype_pkey PRIMARY KEY (r_requesttype_id),
  CONSTRAINT r_requesttype_isactive_check CHECK (isactive in ('Y','N'))
)
;

