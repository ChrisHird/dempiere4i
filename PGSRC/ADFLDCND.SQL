-- Table: ad_fieldcondition

-- DROP TABLE ad_fieldcondition;

CREATE TABLE ad_fieldcondition FOR SYSTEM NAME adfldcnd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_fieldcondition_id           FOR COLUMN ad_fcdnid       DECIMAL(10,0) NOT NULL,
  ad_fielddefinition_id          FOR COLUMN ad_fdefid       DECIMAL(10,0) NOT NULL,
  condition                                                 VARCHAR(2000) DEFAULT NULL,
  stylesheet                                                VARCHAR(2000) DEFAULT NULL,
  ad_printfont_id                FOR COLUMN ad_pfnid        DECIMAL(10,0),
  ad_color_id                    FOR COLUMN ad_clrid        DECIMAL(10,0),
  CONSTRAINT ad_fieldcondition_key PRIMARY KEY (ad_fieldcondition_id),
  CONSTRAINT ad_fieldcondition_isactive_check CHECK (isactive in ('Y','N'))
)
;

