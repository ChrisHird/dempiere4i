-- Table: c_projectissue

-- DROP TABLE c_projectissue;

CREATE TABLE c_projectissue FOR SYSTEM NAME cprojiss
(
  c_projectissue_id              FOR COLUMN c_piid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) DEFAULT 0,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  movementdate                   FOR COLUMN movdat           TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  s_timeexpenseline_id           FOR COLUMN s_telid         DECIMAL(10,0),
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  processing                                                CHAR(1),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_projectissue_pkey PRIMARY KEY (c_projectissue_id),
  CONSTRAINT c_projectissue_isactive_check CHECK (isactive in ('Y','N'))
)
;

