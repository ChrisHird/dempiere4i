-- Table: t_replenishplan

-- DROP TABLE t_replenishplan;

CREATE TABLE t_replenishplan FOR SYSTEM NAME trplpln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0),
  c_order_id                                                DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  datefinish                                                TIMESTAMP,
  datestart                                                 TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  line                                                      DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  productname                    FOR COLUMN prodnam         VARCHAR(255),
  t_replenishplan_id             FOR COLUMN t_rplpid        DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  recordtype                                                VARCHAR(50),
  week1                                                     DECIMAL(10,0),
  week10                                                    DECIMAL(10,0),
  week11                                                    DECIMAL(10,0),
  week12                                                    DECIMAL(10,0),
  week13                                                    DECIMAL(10,0),
  week14                                                    DECIMAL(10,0),
  week15                                                    DECIMAL(10,0),
  week16                                                    DECIMAL(10,0),
  week17                                                    DECIMAL(10,0),
  week18                                                    DECIMAL(10,0),
  week19                                                    DECIMAL(10,0),
  week2                                                     DECIMAL(10,0),
  week20                                                    DECIMAL(10,0),
  week21                                                    DECIMAL(10,0),
  week22                                                    DECIMAL(10,0),
  week23                                                    DECIMAL(10,0),
  week24                                                    DECIMAL(10,0),
  week3                                                     DECIMAL(10,0),
  week4                                                     DECIMAL(10,0),
  week5                                                     DECIMAL(10,0),
  week6                                                     DECIMAL(10,0),
  week7                                                     DECIMAL(10,0),
  week8                                                     DECIMAL(10,0),
  week9                                                     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_replenishplan_key PRIMARY KEY (t_replenishplan_id),
  CONSTRAINT t_replenishplan_isactive_check CHECK (isactive in ('Y','N'))
)
;

