-- Table: hr_listline

-- DROP TABLE hr_listline;

CREATE TABLE hr_listline FOR SYSTEM NAME hrlstln
(
  name                                                      VARCHAR(60),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  col_1                                                     DECFLOAT(16),
  col_2                                                     DECFLOAT(16),
  col_3                                                     DECFLOAT(16),
  col_4                                                     DECFLOAT(16),
  col_5                                                     DECFLOAT(16),
  col_6                                                     DECFLOAT(16),
  col_7                                                     DECFLOAT(16),
  col_8                                                     DECFLOAT(16),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  hr_listline_id                 FOR COLUMN hr_llineid      DECIMAL(10,0) NOT NULL,
  hr_listversion_id              FOR COLUMN hr_lstvid       DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL,
  maxvalue                                                  DECFLOAT(16) NOT NULL,
  minvalue                                                  DECFLOAT(16) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_listline_pkey PRIMARY KEY (hr_listline_id),
  CONSTRAINT hr_listline_isactive_check CHECK (isactive in ('Y','N'))
)
;

