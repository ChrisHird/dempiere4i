-- Table: c_ordertax

-- DROP TABLE c_ordertax;

CREATE TABLE c_ordertax
(
  c_order_id                                                DECIMAL(10,0) NOT NULL,
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  taxbaseamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  taxamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  istaxincluded                  FOR COLUMN itinc           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_ordertax_pkey PRIMARY KEY (c_order_id, c_tax_id),
  CONSTRAINT c_ordertax_isactive_check CHECK (isactive in ('Y','N'))
)
;

