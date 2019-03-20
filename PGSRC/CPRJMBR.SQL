-- Table: c_projectmember

-- DROP TABLE c_projectmember;

CREATE TABLE c_projectmember FOR SYSTEM NAME cprjmbr
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectmember_id             FOR COLUMN c_prjmid        DECIMAL(10,0) NOT NULL,
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  notificationtype               FOR COLUMN nftntyp         CHAR(1) NOT NULL DEFAULT 'B',
  c_projectmembertype_id         FOR COLUMN c_prjmtid       DECIMAL(10,0),
  CONSTRAINT c_projectmember_key PRIMARY KEY (c_projectmember_id),
  CONSTRAINT c_projectmember_isactive_check CHECK (isactive in ('Y','N'))
)
;

