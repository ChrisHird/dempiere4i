-- Table: ad_sequence_audit

-- DROP TABLE ad_sequence_audit;

CREATE TABLE ad_sequence_audit FOR SYSTEM NAME adseqaud
(
  ad_sequence_id                 FOR COLUMN ad_seqid        DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_sequence_audit_pkey PRIMARY KEY (ad_sequence_id, documentno),
  CONSTRAINT ad_sequence_audit_isactive_check CHECK (isactive in ('Y','N'))
)
;

