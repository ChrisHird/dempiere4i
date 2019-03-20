-- Table: ad_browse_access

-- DROP TABLE ad_browse_access;

CREATE TABLE ad_browse_access FOR SYSTEM NAME adbrwac
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_browse_id                   FOR COLUMN ad_bwsid        DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  isreadwrite                    FOR COLUMN isrw            CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_browse_access_key PRIMARY KEY (ad_browse_id, ad_role_id),
  CONSTRAINT ad_browse_access_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_browse_access_isreadwrite_check CHECK (isreadwrite in ('Y','N'))
)
;

