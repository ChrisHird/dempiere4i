-- Table: c_bpartner_location

-- DROP TABLE c_bpartner_location;

CREATE TABLE c_bpartner_location FOR SYSTEM NAME cbploc
(
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  isbillto                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isshipto                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  ispayfrom                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  isremitto                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  phone                                                     VARCHAR(40),
  phone2                                                    VARCHAR(40),
  fax                                                       VARCHAR(40),
  isdn                                                      VARCHAR(40),
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  contacttype                    FOR COLUMN cnttype         VARCHAR(40),
  contactperson                  FOR COLUMN cntpers         VARCHAR(40),
  hr_relationship_id             FOR COLUMN hr_rlnid        DECIMAL(10,0),
  mobilephone                    FOR COLUMN mobile          VARCHAR(20),
  email                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bpartner_location_pkey PRIMARY KEY (c_bpartner_location_id),
  CONSTRAINT c_bpartner_location_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bpartner_location_isbillto_check CHECK (isbillto in ('Y','N')),
  CONSTRAINT c_bpartner_location_ispayfrom_check CHECK (ispayfrom in ('Y','N')),
  CONSTRAINT c_bpartner_location_isremitto_check CHECK (isremitto in ('Y','N')),
  CONSTRAINT c_bpartner_location_isshipto_check CHECK (isshipto in ('Y','N'))
)
;

