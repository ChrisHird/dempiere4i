-- Table: t_report

-- DROP TABLE t_report;

CREATE TABLE t_report
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0),
  accounttype                    FOR COLUMN accttyp         CHAR(1) DEFAULT NULL,
  ax_case                                                   VARCHAR(1) DEFAULT NULL,
  c_validcombination_id          FOR COLUMN c_vcid          DECIMAL(10,0) DEFAULT 0,
  col_0                                                     DECFLOAT(16),
  col_1                                                     DECFLOAT(16),
  col_10                                                    DECFLOAT(16),
  col_11                                                    DECFLOAT(16),
  col_12                                                    DECFLOAT(16),
  col_13                                                    DECFLOAT(16),
  col_14                                                    DECFLOAT(16),
  col_15                                                    DECFLOAT(16),
  col_16                                                    DECFLOAT(16),
  col_17                                                    DECFLOAT(16),
  col_18                                                    DECFLOAT(16),
  col_19                                                    DECFLOAT(16),
  col_2                                                     DECFLOAT(16),
  col_20                                                    DECFLOAT(16),
  col_3                                                     DECFLOAT(16),
  col_4                                                     DECFLOAT(16),
  col_5                                                     DECFLOAT(16),
  col_6                                                     DECFLOAT(16),
  col_7                                                     DECFLOAT(16),
  col_8                                                     DECFLOAT(16),
  col_9                                                     DECFLOAT(16),
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  fact_acct_id                   FOR COLUMN fact_aid        DECIMAL(10,0),
  fixedpercentage                FOR COLUMN fxdpc           DECFLOAT(16),
  levelno                                                   DECIMAL(10,0),
  name                                                      VARCHAR(60) DEFAULT NULL,
  pa_reportline_id               FOR COLUMN pa_rlid         DECIMAL(10,0),
  record_id                                                 DECIMAL(10,0),
  reportlinestyle                FOR COLUMN rptlnstl        VARCHAR(3) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0),
  tablevel                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36)
)
;

