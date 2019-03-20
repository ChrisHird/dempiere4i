-- Table: ad_sequence_no

-- DROP TABLE ad_sequence_no;

CREATE TABLE ad_sequence_no FOR SYSTEM NAME adseqnum
(
  ad_sequence_id                 FOR COLUMN ad_seqid        DECIMAL(10,0) NOT NULL,
  calendaryear                   FOR COLUMN calyr           VARCHAR(4) NOT NULL DEFAULT '0000',
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  currentnext                    FOR COLUMN curnxt          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_sequence_no_pkey PRIMARY KEY (ad_sequence_id, calendaryear),
  CONSTRAINT ad_sequence_no_isactive_check CHECK (isactive in ('Y','N'))
)
;

