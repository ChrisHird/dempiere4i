-- Table: ad_userdef_win

-- DROP TABLE ad_userdef_win;

CREATE TABLE ad_userdef_win FOR SYSTEM NAME adusrdwin
(
  ad_userdef_win_id              FOR COLUMN ad_udwid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  isuserupdateable               FOR COLUMN isuupdate       CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_userdef_win_pkey PRIMARY KEY (ad_userdef_win_id),
  CONSTRAINT ad_userdef_win_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_userdef_win_isdefault_check CHECK (isdefault in ('Y','N')),
  CONSTRAINT ad_userdef_win_isreadonly_check CHECK (isreadonly in ('Y','N')),
  CONSTRAINT ad_userdef_win_isuserupdateable_check CHECK (isuserupdateable in ('Y','N'))
)
;

