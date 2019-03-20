-- Table: u_blacklistcheque

-- DROP TABLE u_blacklistcheque;

CREATE TABLE u_blacklistcheque FOR SYSTEM NAME ublchq
(
  u_blacklistcheque_id           FOR COLUMN u_blchqid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  bankname                                                  VARCHAR(120) NOT NULL,
  chequeno                                                  VARCHAR(120) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT u_blacklistcheque_pkey PRIMARY KEY (u_blacklistcheque_id),
  CONSTRAINT u_blacklistcheque_isactive_check CHECK (isactive in ('Y','N'))
)
;

