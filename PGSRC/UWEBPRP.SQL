-- Table: u_web_properties

-- DROP TABLE u_web_properties;

CREATE TABLE u_web_properties FOR SYSTEM NAME uwebprp
(
  u_web_properties_id            FOR COLUMN u_wpid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECFLOAT(16) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECFLOAT(16) NOT NULL,
  u_key                                                     VARCHAR(240) NOT NULL,
  u_value                                                   VARCHAR(240) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT u_web_properties_pkey PRIMARY KEY (u_web_properties_id),
  CONSTRAINT u_web_properties_isactive_check CHECK (isactive in ('Y','N'))
)
;

