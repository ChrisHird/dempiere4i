-- Table: wm_inoutboundlinema

-- DROP TABLE wm_inoutboundlinema;

CREATE TABLE wm_inoutboundlinema FOR SYSTEM NAME wmiobndlma
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  movementqty                    FOR COLUMN movqty          DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_inoutboundlinema_id         FOR COLUMN wm_ioblmid      DECIMAL(10,0) NOT NULL,
  wm_inoutboundline_id           FOR COLUMN wm_ioblid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_inoutboundlinema_key PRIMARY KEY (wm_inoutboundlinema_id),
  CONSTRAINT wm_inoutboundlinema_isactive_check CHECK (isactive in ('Y','N'))
)
;

