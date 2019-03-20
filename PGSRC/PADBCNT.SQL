-- Table: pa_dashboardcontent

-- DROP TABLE pa_dashboardcontent;

CREATE TABLE pa_dashboardcontent FOR SYSTEM NAME padbcnt
(
  pa_dashboardcontent_id         FOR COLUMN pa_dbcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  name                                                      VARCHAR(120) NOT NULL,
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  html                                                      CLOB,
  line                                                      DECFLOAT(16),
  pa_goal_id                                                DECIMAL(10,0),
  columnno                                                  DECIMAL(10,0) DEFAULT 1,
  zulfilepath                    FOR COLUMN zulfpath        VARCHAR(255),
  iscollapsible                  FOR COLUMN isclpe          CHAR(1) NOT NULL DEFAULT 'Y',
  goaldisplay                    FOR COLUMN gldisplay       CHAR(1) DEFAULT 'T',
  isopenbydefault                FOR COLUMN isopndft        CHAR(1) DEFAULT 'Y',
  iseventrequired                FOR COLUMN isevtreq        CHAR(1) DEFAULT 'N',
  zoom_window_id                 FOR COLUMN zoom_wid        DECIMAL(10,0),
  zoom_tab_id                    FOR COLUMN zoom_tid        DECIMAL(10,0),
  pagesize                                                  DECIMAL(10,0),
  onevent                                                   VARCHAR(30),
  ad_browse_id                   FOR COLUMN ad_bwsid        DECIMAL(10,0),
  zoom_field_id                  FOR COLUMN zoom_fid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  accesslevel                    FOR COLUMN acclvl          CHAR(1) DEFAULT '3',
  CONSTRAINT pa_dashboardcontent_pkey PRIMARY KEY (pa_dashboardcontent_id),
  CONSTRAINT pa_dashboardcontent_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pa_dashboardcontent_iscollapsible_check CHECK (iscollapsible in ('Y','N')),
  CONSTRAINT pa_dashboardcontent_isopenbydefault_check CHECK (isopenbydefault in ('Y','N'))
)
;

