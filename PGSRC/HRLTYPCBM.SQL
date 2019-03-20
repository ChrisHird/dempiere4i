-- Table: hr_leavetypecombination

-- DROP TABLE hr_leavetypecombination;

CREATE TABLE hr_leavetypecombination FOR SYSTEM NAME hrltypcbm
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_leavetypecombination_id     FOR COLUMN hr_ltcbnid      DECIMAL(10,0) NOT NULL,
  hr_leavetype_id                FOR COLUMN hr_ltid         DECIMAL(10,0) NOT NULL,
  allowedleavetype_id            FOR COLUMN alwltypid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_leavetypecombination_key PRIMARY KEY (hr_leavetypecombination_id),
  CONSTRAINT hr_leavetypecombination_isactive_check CHECK (isactive in ('Y','N'))
)
;

