-- Table: gl_category

-- DROP TABLE gl_category;

CREATE TABLE gl_category FOR SYSTEM NAME glcat
(
  gl_category_id                 FOR COLUMN gl_cid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  categorytype                   FOR COLUMN cattyp          CHAR(1) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  docbasetype                    FOR COLUMN docbsetyp       VARCHAR(3),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_category_pkey PRIMARY KEY (gl_category_id),
  CONSTRAINT gl_category_isactive_check CHECK (isactive in ('Y','N'))
)
;

