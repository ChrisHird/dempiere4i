-- Table: pp_perioddefinition

-- DROP TABLE pp_perioddefinition;

CREATE TABLE pp_perioddefinition FOR SYSTEM NAME pppddfn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_perioddefinition_id         FOR COLUMN pp_pddefid      DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  processing                                                CHAR(1) DEFAULT NULL,
  pp_calendar_id                 FOR COLUMN pp_calid        DECIMAL(10,0),
  calendaryear                   FOR COLUMN calyr           VARCHAR(4) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_perioddefinition_key PRIMARY KEY (pp_perioddefinition_id),
  CONSTRAINT pp_perioddefinition_isactive_check CHECK (isactive in ('Y','N'))
)
;

