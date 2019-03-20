-- Table: asp_tab

-- DROP TABLE asp_tab;

CREATE TABLE asp_tab
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_tab_id                                                 DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  allfields                                                 CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  processing                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  asp_tab_id                                                DECIMAL(10,0) NOT NULL,
  asp_window_id                  FOR COLUMN asp_winid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_tab_pkey PRIMARY KEY (asp_tab_id),
  CONSTRAINT asp_tab_allfields_check CHECK (allfields in ('Y','N')),
  CONSTRAINT asp_tab_isactive_check CHECK (isactive in ('Y','N'))
)
;

