-- Table: ad_userdef_field

-- DROP TABLE ad_userdef_field;

CREATE TABLE ad_userdef_field FOR SYSTEM NAME adusrdeff
(
  ad_userdef_field_id            FOR COLUMN ad_udfid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_userdef_tab_id              FOR COLUMN ad_udtid        DECIMAL(10,0) NOT NULL,
  ad_field_id                    FOR COLUMN ad_fid          DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isdisplayed                    FOR COLUMN isdspd          CHAR(1) NOT NULL DEFAULT 'Y',
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  issameline                                                CHAR(1) NOT NULL DEFAULT 'N',
  isupdateable                   FOR COLUMN isupdtbl        CHAR(1) NOT NULL DEFAULT 'Y',
  displaylength                  FOR COLUMN dsplen          DECIMAL(10,0) NOT NULL DEFAULT 0,
  displaylogic                   FOR COLUMN dsplgc          VARCHAR(2000) NOT NULL,
  defaultvalue                   FOR COLUMN dftval          VARCHAR(2000) NOT NULL,
  sortno                                                    DECIMAL(10,0) NOT NULL DEFAULT 0,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_userdef_field_pkey PRIMARY KEY (ad_userdef_field_id),
  CONSTRAINT ad_userdef_field_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_userdef_field_isdisplayed_check CHECK (isdisplayed in ('Y','N')),
  CONSTRAINT ad_userdef_field_isreadonly_check CHECK (isreadonly in ('Y','N')),
  CONSTRAINT ad_userdef_field_issameline_check CHECK (issameline in ('Y','N')),
  CONSTRAINT ad_userdef_field_isupdateable_check CHECK (isupdateable in ('Y','N'))
)
;

