-- Table: c_projectcategory

-- DROP TABLE c_projectcategory;

CREATE TABLE c_projectcategory FOR SYSTEM NAME cprjcat
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectcategory_id           FOR COLUMN c_prjcid        DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT NULL,
  projectcategoryparent_id       FOR COLUMN prjcpid         DECIMAL(10,0),
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  projectcategory                FOR COLUMN prjcat          CHAR(1) NOT NULL,
  CONSTRAINT c_projectcategory_key PRIMARY KEY (c_projectcategory_id),
  CONSTRAINT c_projectcategory_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projectcategory_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

