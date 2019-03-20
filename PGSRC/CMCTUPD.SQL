-- Table: cm_chattypeupdate

-- DROP TABLE cm_chattypeupdate;

CREATE TABLE cm_chattypeupdate FOR SYSTEM NAME cmctupd
(
  cm_chattype_id                 FOR COLUMN cm_ctid         DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_chattypeupdate_pkey PRIMARY KEY (cm_chattype_id, ad_user_id),
  CONSTRAINT cm_chattypeupdate_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_chattypeupdate_isselfservice_check CHECK (isselfservice in ('Y','N'))
)
;

