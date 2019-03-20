-- Table: pa_ratioelement

-- DROP TABLE pa_ratioelement;

CREATE TABLE pa_ratioelement FOR SYSTEM NAME parelm
(
  pa_ratioelement_id             FOR COLUMN pa_relmid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  pa_ratio_id                    FOR COLUMN pa_ratioid      DECIMAL(10,0) NOT NULL,
  ratiooperand                   FOR COLUMN ratoprnd        CHAR(1) NOT NULL,
  ratioelementtype               FOR COLUMN ratelmtyp       CHAR(1) NOT NULL,
  account_id                                                DECIMAL(10,0),
  pa_ratioused_id                FOR COLUMN pa_ratuid       DECIMAL(10,0),
  pa_measurecalc_id              FOR COLUMN pa_mcid         DECIMAL(10,0),
  constantvalue                  FOR COLUMN cnstval         DECFLOAT(16),
  seqno                                                     DECIMAL(10,0) NOT NULL,
  postingtype                    FOR COLUMN posttyp         CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_ratioelement_pkey PRIMARY KEY (pa_ratioelement_id),
  CONSTRAINT pa_ratioelement_isactive_check CHECK (isactive in ('Y','N'))
)
;

