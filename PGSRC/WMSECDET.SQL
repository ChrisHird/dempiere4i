-- Table: wm_section_detail

-- DROP TABLE wm_section_detail;

CREATE TABLE wm_section_detail FOR SYSTEM NAME wmsecdet
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_section_detail_id           FOR COLUMN wm_secdid       DECIMAL(10,0) NOT NULL,
  wm_section_id                  FOR COLUMN wm_secid        DECIMAL(10,0) NOT NULL,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_section_detail_key PRIMARY KEY (wm_section_detail_id),
  CONSTRAINT wm_section_detail_isactive_check CHECK (isactive in ('Y','N'))
)
;

