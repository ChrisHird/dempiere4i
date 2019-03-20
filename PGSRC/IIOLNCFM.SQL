-- Table: i_inoutlineconfirm

-- DROP TABLE i_inoutlineconfirm;

CREATE TABLE i_inoutlineconfirm FOR SYSTEM NAME iiolncfm
(
  i_inoutlineconfirm_id          FOR COLUMN i_iolcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  i_isimported                   FOR COLUMN i_ii            CHAR(1) NOT NULL DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  m_inoutlineconfirm_id          FOR COLUMN m_iolcid        DECIMAL(10,0),
  confirmationno                 FOR COLUMN cfmnum          VARCHAR(20),
  description                    FOR COLUMN desc            VARCHAR(255),
  confirmedqty                   FOR COLUMN cfmqty          DECFLOAT(16) DEFAULT 0,
  scrappedqty                    FOR COLUMN scrqty          DECFLOAT(16) DEFAULT 0,
  differenceqty                  FOR COLUMN difqty          DECFLOAT(16) DEFAULT 0,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_inoutlineconfirm_pkey PRIMARY KEY (i_inoutlineconfirm_id),
  CONSTRAINT i_inoutlineconfirm_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_inoutlineconfirm_processed_check CHECK (processed in ('Y','N'))
)
;

