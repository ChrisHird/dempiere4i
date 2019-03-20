-- Table: r_standardrequest

-- DROP TABLE r_standardrequest;

CREATE TABLE r_standardrequest FOR SYSTEM NAME rstdreq
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  r_standardrequest_id           FOR COLUMN r_stdrid        DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  summary                                                   VARCHAR(2000) NOT NULL,
  r_group_id                                                DECIMAL(10,0),
  r_category_id                  FOR COLUMN r_catid         DECIMAL(10,0) NOT NULL,
  r_status_id                    FOR COLUMN r_stsid         DECIMAL(10,0),
  taskstatus                                                CHAR(1) DEFAULT NULL,
  priority                                                  CHAR(1) NOT NULL,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  ad_role_id                                                DECIMAL(10,0),
  durationunit                   FOR COLUMN durunit         CHAR(1) DEFAULT 'm',
  duration                                                  DECIMAL(10,0),
  r_requestrelated_id            FOR COLUMN r_rrltdid       DECIMAL(10,0),
  duetype                                                   CHAR(1) NOT NULL,
  r_standardrequesttype_id       FOR COLUMN r_stdrtid       DECIMAL(10,0),
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0) NOT NULL,
  confidentialtypeentry          FOR COLUMN cnftypent       CHAR(1) NOT NULL,
  CONSTRAINT r_standardrequest_key PRIMARY KEY (r_standardrequest_id),
  CONSTRAINT r_standardrequest_isactive_check CHECK (isactive in ('Y','N'))
)
;

