-- Table: c_bp_edi

-- DROP TABLE c_bp_edi;

CREATE TABLE c_bp_edi
(
  c_bp_edi_id                    FOR COLUMN c_bpediid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  editype                                                   CHAR(1) NOT NULL,
  isaudited                                                 CHAR(1) NOT NULL DEFAULT 'N',
  customerno                                                VARCHAR(20) NOT NULL,
  ad_sequence_id                 FOR COLUMN ad_seqid        DECIMAL(10,0) NOT NULL,
  email_to                                                  VARCHAR(60),
  email_from                                                VARCHAR(60),
  email_from_uid                 FOR COLUMN emfuid          VARCHAR(20),
  email_from_pwd                 FOR COLUMN emfpwd          VARCHAR(20),
  email_error_to                 FOR COLUMN emerrt          VARCHAR(60) NOT NULL,
  isinfosent                                                CHAR(1) NOT NULL DEFAULT 'N',
  email_info_to                  FOR COLUMN eminft          VARCHAR(60) NOT NULL,
  sendinquiry                    FOR COLUMN sndinq          CHAR(1) NOT NULL DEFAULT 'Y',
  receiveinquiryreply            FOR COLUMN rcvinqrpy       CHAR(1) NOT NULL DEFAULT 'Y',
  sendorder                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  receiveorderreply              FOR COLUMN rcvordrpy       CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_edi_pkey PRIMARY KEY (c_bp_edi_id),
  CONSTRAINT c_bp_edi_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bp_edi_isaudited_check CHECK (isaudited in ('Y','N')),
  CONSTRAINT c_bp_edi_isinfosent_check CHECK (isinfosent in ('Y','N')),
  CONSTRAINT c_bp_edi_receiveinquiryreply_check CHECK (receiveinquiryreply in ('Y','N')),
  CONSTRAINT c_bp_edi_receiveorderreply_check CHECK (receiveorderreply in ('Y','N')),
  CONSTRAINT c_bp_edi_sendinquiry_check CHECK (sendinquiry in ('Y','N')),
  CONSTRAINT c_bp_edi_sendorder_check CHECK (sendorder in ('Y','N'))
)
;

