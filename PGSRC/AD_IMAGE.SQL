-- Table: ad_image

-- DROP TABLE ad_image;

CREATE TABLE ad_image
(
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  imageurl                                                  VARCHAR(120),
  binarydata                                                BLOB,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_image_pkey PRIMARY KEY (ad_image_id),
  CONSTRAINT ad_image_isactive_check CHECK (isactive in ('Y','N'))
)
;

