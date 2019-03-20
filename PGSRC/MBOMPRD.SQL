-- Table: m_bomproduct

-- DROP TABLE m_bomproduct;

CREATE TABLE m_bomproduct FOR SYSTEM NAME mbomprd
(
  m_bomproduct_id                FOR COLUMN m_bompid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL DEFAULT 0,
  m_bom_id                                                  DECIMAL(10,0) NOT NULL,
  bomproducttype                 FOR COLUMN bomprdtyp       CHAR(1) NOT NULL,
  isphantom                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_productbom_id                FOR COLUMN m_prdbomid      DECIMAL(10,0),
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_bomalternative_id            FOR COLUMN m_bomaid        DECIMAL(10,0),
  bomqty                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  m_productoperation_id          FOR COLUMN m_poprid        DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0) DEFAULT 0,
  leadtimeoffset                 FOR COLUMN ltimeoff        DECIMAL(10,0) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_bomproduct_pkey PRIMARY KEY (m_bomproduct_id),
  CONSTRAINT m_bomproduct_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_bomproduct_isphantom_check CHECK (isphantom in ('Y','N'))
)
;

