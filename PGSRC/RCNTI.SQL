-- Table: r_contactinterest

-- DROP TABLE r_contactinterest;

CREATE TABLE r_contactinterest FOR SYSTEM NAME rcnti
(
  r_interestarea_id              FOR COLUMN r_iaid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  subscribedate                  FOR COLUMN subdat          TIMESTAMP,
  optoutdate                                                TIMESTAMP,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_contactinterest_pkey PRIMARY KEY (r_interestarea_id, ad_user_id),
  CONSTRAINT r_contactinterest_isactive_check CHECK (isactive in ('Y','N'))
)
;

