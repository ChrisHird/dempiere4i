-- Table: ad_sequence

-- DROP TABLE ad_sequence;

CREATE TABLE ad_sequence FOR SYSTEM NAME adseq
(
  ad_sequence_id                 FOR COLUMN ad_seqid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  vformat                                                   VARCHAR(40),
  isautosequence                 FOR COLUMN isatoseq        CHAR(1) NOT NULL DEFAULT 'Y',
  incrementno                    FOR COLUMN incnum          DECIMAL(10,0) NOT NULL,
  startno                                                   DECIMAL(10,0) NOT NULL,
  currentnext                    FOR COLUMN curnxt          DECIMAL(10,0) NOT NULL,
  currentnextsys                 FOR COLUMN curnxtsys       DECIMAL(10,0) NOT NULL,
  isaudited                                                 CHAR(1) DEFAULT 'N',
  istableid                                                 CHAR(1) DEFAULT 'N',
  prefix                                                    VARCHAR(255),
  suffix                                                    VARCHAR(255),
  startnewyear                   FOR COLUMN strnyear        CHAR(1) DEFAULT 'N',
  datecolumn                                                VARCHAR(60),
  decimalpattern                 FOR COLUMN decptn          VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_sequence_pkey PRIMARY KEY (ad_sequence_id),
  CONSTRAINT ad_sequence_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_sequence_isaudited_check CHECK (isaudited in ('Y','N')),
  CONSTRAINT ad_sequence_isautosequence_check CHECK (isautosequence in ('Y','N')),
  CONSTRAINT ad_sequence_istableid_check CHECK (istableid in ('Y','N')),
  CONSTRAINT ad_sequence_startnewyear_check CHECK (startnewyear in ('Y','N'))
)
;

