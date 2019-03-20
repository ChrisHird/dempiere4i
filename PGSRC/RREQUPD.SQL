-- Table: r_requestupdate

-- DROP TABLE r_requestupdate;

CREATE TABLE r_requestupdate FOR SYSTEM NAME rrequpd
(
  r_requestupdate_id             FOR COLUMN r_requpdid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  r_request_id                   FOR COLUMN r_rid           DECIMAL(10,0) NOT NULL,
  confidentialtypeentry          FOR COLUMN cnftypent       CHAR(1) NOT NULL,
  starttime                                                 TIMESTAMP,
  endtime                                                   TIMESTAMP,
  qtyspent                                                  DECFLOAT(16) DEFAULT 0,
  qtyinvoiced                    FOR COLUMN qtyinv          DECFLOAT(16) DEFAULT 0,
  m_productspent_id              FOR COLUMN m_pspentid      DECIMAL(10,0),
  result                                                    VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_requestupdate_pkey PRIMARY KEY (r_requestupdate_id),
  CONSTRAINT r_requestupdate_isactive_check CHECK (isactive in ('Y','N'))
)
;

