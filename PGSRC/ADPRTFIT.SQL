-- Table: ad_printformatitem_trl

-- DROP TABLE ad_printformatitem_trl;

CREATE TABLE ad_printformatitem_trl FOR SYSTEM NAME adprtfit
(
  ad_printformatitem_id          FOR COLUMN ad_pfiid        DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  printname                                                 VARCHAR(2000),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  printnamesuffix                FOR COLUMN prtnsfx         VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printformatitem_trl_pkey PRIMARY KEY (ad_printformatitem_id, ad_language),
  CONSTRAINT ad_printformatitem_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printformatitem_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

