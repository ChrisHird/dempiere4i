-- Table: ad_attachmentnote

-- DROP TABLE ad_attachmentnote;

CREATE TABLE ad_attachmentnote FOR SYSTEM NAME adatchn
(
  ad_attachmentnote_id           FOR COLUMN ad_anid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_attachment_id               FOR COLUMN ad_atcid        DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  title                                                     VARCHAR(60) NOT NULL,
  textmsg                                                   VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_attachmentnote_pkey PRIMARY KEY (ad_attachmentnote_id),
  CONSTRAINT ad_attachmentnote_isactive_check CHECK (isactive in ('Y','N'))
)
;

