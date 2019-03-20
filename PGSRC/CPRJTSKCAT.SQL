-- Table: c_projecttaskcategory

-- DROP TABLE c_projecttaskcategory;

CREATE TABLE c_projecttaskcategory FOR SYSTEM NAME cprjtskcat
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projecttaskcategory_id       FOR COLUMN c_prjtcid       DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT NULL,
  projecttaskcategoryparent_id   FOR COLUMN prjtcpid        DECIMAL(10,0),
  CONSTRAINT c_projecttaskcategory_key PRIMARY KEY (c_projecttaskcategory_id),
  CONSTRAINT c_projecttaskcategory_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projecttaskcategory_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

