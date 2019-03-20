-- Table: ad_userdef_tab

-- DROP TABLE ad_userdef_tab;

CREATE TABLE ad_userdef_tab FOR SYSTEM NAME adusrdtab
(
  ad_userdef_tab_id              FOR COLUMN ad_udtid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_userdef_win_id              FOR COLUMN ad_udwid        DECIMAL(10,0) NOT NULL,
  ad_tab_id                                                 DECIMAL(10,0) NOT NULL,
  ismultirowonly                 FOR COLUMN ismrowo         CHAR(1) NOT NULL DEFAULT 'N',
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  issinglerow                    FOR COLUMN issglrow        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_userdef_tab_pkey PRIMARY KEY (ad_userdef_tab_id),
  CONSTRAINT ad_userdef_tab_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_userdef_tab_ismultirowonly_check CHECK (ismultirowonly in ('Y','N')),
  CONSTRAINT ad_userdef_tab_isreadonly_check CHECK (isreadonly in ('Y','N')),
  CONSTRAINT ad_userdef_tab_issinglerow_check CHECK (issinglerow in ('Y','N'))
)
;

