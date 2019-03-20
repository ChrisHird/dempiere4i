-- Table: ad_desktopworkbench

-- DROP TABLE ad_desktopworkbench;

CREATE TABLE ad_desktopworkbench FOR SYSTEM NAME addskwb
(
  ad_desktopworkbench_id         FOR COLUMN ad_dwid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_workbench_id                FOR COLUMN ad_wid          DECIMAL(10,0) NOT NULL,
  ad_desktop_id                  FOR COLUMN ad_did          DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_desktopworkbench_pkey PRIMARY KEY (ad_desktopworkbench_id),
  CONSTRAINT ad_desktopworkbench_isactive_check CHECK (isactive in ('Y','N'))
)
;

