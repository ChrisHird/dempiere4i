-- Table: asp_window

-- DROP TABLE asp_window;

CREATE TABLE asp_window
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0) NOT NULL,
  asp_level_id                   FOR COLUMN asp_lvlid       DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  asp_window_id                  FOR COLUMN asp_winid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_window_pkey PRIMARY KEY (asp_window_id),
  CONSTRAINT asp_window_isactive_check CHECK (isactive in ('Y','N'))
)
;

