-- Table: m_attributeset

-- DROP TABLE m_attributeset;

CREATE TABLE m_attributeset FOR SYSTEM NAME matrset
(
  m_attributeset_id              FOR COLUMN m_atsid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isserno                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  m_sernoctl_id                  FOR COLUMN m_sncid         DECIMAL(10,0),
  islot                                                     CHAR(1) NOT NULL DEFAULT 'Y',
  m_lotctl_id                    FOR COLUMN m_lcid          DECIMAL(10,0),
  isguaranteedate                FOR COLUMN isgdte          CHAR(1) NOT NULL DEFAULT 'N',
  guaranteedays                  FOR COLUMN gdays           DECIMAL(10,0),
  isinstanceattribute            FOR COLUMN isinstatr       CHAR(1) NOT NULL DEFAULT 'N',
  mandatorytype                  FOR COLUMN mndtyp          CHAR(1) NOT NULL DEFAULT 'N',
  isguaranteedatemandatory       FOR COLUMN isgdteman       CHAR(1) NOT NULL DEFAULT 'N',
  islotmandatory                 FOR COLUMN islotmdt        CHAR(1) NOT NULL DEFAULT 'N',
  issernomandatory               FOR COLUMN issnmand        CHAR(1) NOT NULL DEFAULT 'N',
  sernocharsoverwrite            FOR COLUMN snchrsow        CHAR(1),
  lotcharsoverwrite              FOR COLUMN lotchrsow       CHAR(1),
  lotchareoverwrite              FOR COLUMN lotchrow        CHAR(1),
  sernochareoverwrite            FOR COLUMN snchreow        CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributeset_pkey PRIMARY KEY (m_attributeset_id),
  CONSTRAINT m_attributeset_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_attributeset_isguaranteedate_check CHECK (isguaranteedate in ('Y','N')),
  CONSTRAINT m_attributeset_islot_check CHECK (islot in ('Y','N')),
  CONSTRAINT m_attributeset_isserno_check CHECK (isserno in ('Y','N'))
)
;

