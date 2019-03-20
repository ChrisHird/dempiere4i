-- Table: wm_section

-- DROP TABLE wm_section;

CREATE TABLE wm_section
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_section_id                  FOR COLUMN wm_secid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  wm_area_id                                                DECIMAL(10,0) NOT NULL,
  wm_section_type_id             FOR COLUMN wm_sectid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_section_key PRIMARY KEY (wm_section_id),
  CONSTRAINT wm_section_isactive_check CHECK (isactive in ('Y','N'))
)
;

