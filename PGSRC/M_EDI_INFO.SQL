-- Table: m_edi_info

-- DROP TABLE m_edi_info;

CREATE TABLE m_edi_info
(
  m_edi_info_id                  FOR COLUMN m_ediiid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_edi_id                                                  DECIMAL(10,0) NOT NULL,
  info                                                      CLOB NOT NULL,
  CONSTRAINT m_edi_info_pkey PRIMARY KEY (m_edi_info_id),
  CONSTRAINT m_edi_info_isactive_check CHECK (isactive in ('Y','N'))
)
;

