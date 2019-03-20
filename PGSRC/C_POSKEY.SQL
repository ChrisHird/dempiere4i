-- Table: c_poskey

-- DROP TABLE c_poskey;

CREATE TABLE c_poskey
(
  c_poskey_id                    FOR COLUMN c_poskid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_poskeylayout_id              FOR COLUMN c_posklid       DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  qty                                                       DECFLOAT(16),
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  subkeylayout_id                FOR COLUMN subklid         DECIMAL(10,0),
  text                                                      VARCHAR(22),
  spanx                                                     DECIMAL(10,0),
  spany                                                     DECIMAL(10,0),
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_printfont_id                FOR COLUMN ad_pfnid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_poskey_pkey PRIMARY KEY (c_poskey_id),
  CONSTRAINT c_poskey_isactive_check CHECK (isactive in ('Y','N'))
)
;

