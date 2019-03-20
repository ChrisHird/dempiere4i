-- Table: hr_leavetypeemployeetype

-- DROP TABLE hr_leavetypeemployeetype;

CREATE TABLE hr_leavetypeemployeetype FOR SYSTEM NAME hrltypetyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_leavetypeemployeetype_id    FOR COLUMN hr_ltmptid     DECIMAL(10,0) NOT NULL,
  hr_leavetype_id                FOR COLUMN hr_ltid         DECIMAL(10,0) NOT NULL,
  hr_employeetype_id             FOR COLUMN hr_emptid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_leavetypeemployeetype_key PRIMARY KEY (hr_leavetypeemployeetype_id),
  CONSTRAINT hr_leavetypeemployeetype_isactive_check CHECK (isactive in ('Y','N'))
)
;

