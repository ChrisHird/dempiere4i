-- Table: r_requestprocessor_route

-- DROP TABLE r_requestprocessor_route;

CREATE TABLE r_requestprocessor_route FOR SYSTEM NAME rreqprte
(
  r_requestprocessor_route_id    FOR COLUMN r_rprid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  r_requestprocessor_id          FOR COLUMN r_rpid          DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  keyword                                                   VARCHAR(60),
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_requestprocessor_route_pkey PRIMARY KEY (r_requestprocessor_route_id),
  CONSTRAINT r_requestprocessor_route_isactive_check CHECK (isactive in ('Y','N'))
)
;

