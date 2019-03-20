-- Table: c_projectissuema

-- DROP TABLE c_projectissuema;

CREATE TABLE c_projectissuema FOR SYSTEM NAME cprjima
(
  c_projectissue_id              FOR COLUMN c_piid          DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_projectissuema_pkey PRIMARY KEY (c_projectissue_id, m_attributesetinstance_id),
  CONSTRAINT c_projectissuema_isactive_check CHECK (isactive in ('Y','N'))
)
;

