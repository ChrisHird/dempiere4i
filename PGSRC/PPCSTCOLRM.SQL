-- Table: pp_cost_collectorma

-- DROP TABLE pp_cost_collectorma;

CREATE TABLE pp_cost_collectorma FOR SYSTEM NAME ppcstcolrm
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL,
  pp_cost_collectorma_id         FOR COLUMN pp_cclrmid     DECIMAL(10,0) NOT NULL,
  pp_cost_collector_id           FOR COLUMN pp_cstclid     DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_cost_collectorma_pkey PRIMARY KEY (pp_cost_collectorma_id),
  CONSTRAINT pp_ccma_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_cost_collectorma_isactive_check CHECK (isactive in ('Y','N'))
)
;

