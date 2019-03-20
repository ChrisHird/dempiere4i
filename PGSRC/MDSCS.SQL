-- Table: m_discountschema

-- DROP TABLE m_discountschema;

CREATE TABLE m_discountschema FOR SYSTEM NAME mdscs
(
  m_discountschema_id            FOR COLUMN m_dsid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  discounttype                   FOR COLUMN dsctyp          CHAR(1) NOT NULL,
  script                                                    VARCHAR(2000),
  flatdiscount                   FOR COLUMN fltdsc          DECFLOAT(16),
  isquantitybased                FOR COLUMN isqbased        CHAR(1) NOT NULL DEFAULT 'Y',
  cumulativelevel                FOR COLUMN cumlvl          CHAR(1),
  processing                                                CHAR(1),
  isbpartnerflatdiscount         FOR COLUMN isbpfdsc        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_discountschema_pkey PRIMARY KEY (m_discountschema_id),
  CONSTRAINT m_discountschema_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_discountschema_isquantitybased_check CHECK (isquantitybased in ('Y','N'))
)
;

