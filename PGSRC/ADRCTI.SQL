-- Table: ad_recentitem

-- DROP TABLE ad_recentitem;

CREATE TABLE ad_recentitem FOR SYSTEM NAME adrcti
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_recentitem_id               FOR COLUMN ad_rctiid       DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_tab_id                                                 DECIMAL(10,0),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  record_id                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_menu_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_recentitem_key PRIMARY KEY (ad_recentitem_id),
  CONSTRAINT ad_recentitem_isactive_check CHECK (isactive in ('Y','N'))
)
;

