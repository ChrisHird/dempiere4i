-- Table: ad_color

-- DROP TABLE ad_color;

CREATE TABLE ad_color
(
  ad_color_id                    FOR COLUMN ad_clrid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  colortype                                                 CHAR(1) NOT NULL,
  red                                                       DECIMAL(10,0) NOT NULL,
  green                                                     DECIMAL(10,0) NOT NULL,
  blue                                                      DECIMAL(10,0) NOT NULL,
  alpha                                                     DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  imagealpha                                                DECFLOAT(16) NOT NULL,
  red_1                                                     DECIMAL(10,0),
  green_1                                                   DECIMAL(10,0),
  blue_1                                                    DECIMAL(10,0),
  alpha_1                                                   DECIMAL(10,0),
  linewidth                                                 DECIMAL(10,0),
  linedistance                   FOR COLUMN lndst           DECIMAL(10,0),
  startpoint                                                DECIMAL(10,0),
  repeatdistance                 FOR COLUMN rptdst          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_color_pkey PRIMARY KEY (ad_color_id),
  CONSTRAINT ad_color_isactive_check CHECK (isactive in ('Y','N'))
)
;

