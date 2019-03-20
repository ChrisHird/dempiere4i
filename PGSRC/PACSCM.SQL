-- Table: pa_colorschema

-- DROP TABLE pa_colorschema;

CREATE TABLE pa_colorschema FOR SYSTEM NAME pacscm
(
  pa_colorschema_id              FOR COLUMN pa_cscmid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  mark1percent                   FOR COLUMN mk1pc           DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_printcolor1_id              FOR COLUMN ad_pc1id        DECIMAL(10,0) NOT NULL,
  mark2percent                   FOR COLUMN mk2pc           DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_printcolor2_id              FOR COLUMN ad_pc2id        DECIMAL(10,0) NOT NULL,
  mark3percent                   FOR COLUMN mk3pc           DECIMAL(10,0) DEFAULT 0,
  ad_printcolor3_id              FOR COLUMN ad_pc3id        DECIMAL(10,0),
  mark4percent                   FOR COLUMN mk4pc           DECIMAL(10,0) DEFAULT 0,
  ad_printcolor4_id              FOR COLUMN ad_pc4id        DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_colorschema_pkey PRIMARY KEY (pa_colorschema_id),
  CONSTRAINT pa_colorschema_isactive_check CHECK (isactive in ('Y','N'))
)
;

