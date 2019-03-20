-- Table: cm_container_url

-- DROP TABLE cm_container_url;

CREATE TABLE cm_container_url FOR SYSTEM NAME cmcnturl
(
  cm_container_url_id            FOR COLUMN cm_cntuid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  cm_container_id                FOR COLUMN cm_cntid        DECIMAL(10,0) NOT NULL,
  checked                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  status                                                    CHAR(2) NOT NULL,
  last_result                    FOR COLUMN last_rslt       VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_container_url_pkey PRIMARY KEY (cm_container_url_id),
  CONSTRAINT cm_container_url_isactive_check CHECK (isactive in ('Y','N'))
)
;

