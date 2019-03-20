-- Table: ad_dashboard_access

-- DROP TABLE ad_dashboard_access;

CREATE TABLE ad_dashboard_access FOR SYSTEM NAME addbacs
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  pa_dashboardcontent_id         FOR COLUMN pa_dbcid        DECIMAL(10,0) NOT NULL,
  CONSTRAINT ad_dashboard_access_isactive_check CHECK (isactive in ('Y','N'))
)
;

