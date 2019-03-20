-- Table: pp_mrp_detail

-- DROP TABLE pp_mrp_detail;

CREATE TABLE pp_mrp_detail FOR SYSTEM NAME ppmrpdet
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_mrp_detail_id               FOR COLUMN pp_mrpdid       DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  mrp_supply_id                  FOR COLUMN mrp_supid       DECIMAL(10,0),
  mrp_demand_id                  FOR COLUMN mrp_dmdid       DECIMAL(10,0),
  qty                                                       DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_mrp_detail_key PRIMARY KEY (pp_mrp_detail_id),
  CONSTRAINT pp_mrp_detail_isactive_check CHECK (isactive in ('Y','N'))
)
;

