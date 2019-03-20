-- Table: hr_leavetype

-- DROP TABLE hr_leavetype;

CREATE TABLE hr_leavetype FOR SYSTEM NAME hrltype
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_leavetype_id                FOR COLUMN hr_ltid         DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(300),
  isleaverepeated                FOR COLUMN islvrptd        CHAR(1),
  isleavesforwardtonextyear      FOR COLUMN islvftnyr       CHAR(1),
  maxleavestoforward             FOR COLUMN maxlvfwd        DECFLOAT(16),
  repeatedtype                   FOR COLUMN rptdtyp         VARCHAR(10),
  value                                                     VARCHAR(60),
  isprovidentfund                FOR COLUMN isprovfnd       CHAR(1),
  maxcontinousleaves             FOR COLUMN maccntlv        DECFLOAT(16),
  isadjacentholidayasleave       FOR COLUMN isadjhlv        CHAR(1),
  ishalfdayleaveallowed          FOR COLUMN ishdlvalw       CHAR(1),
  isallowedencashment            FOR COLUMN isalwdect       CHAR(1),
  minforencashmentdays           FOR COLUMN minfecshd       DECFLOAT(16),
  leavecredittimetype            FOR COLUMN lvcrttyp        VARCHAR(2) NOT NULL,
  adjacentholidaytype            FOR COLUMN adjholtyp       VARCHAR(22),
  minattendancerequire           FOR COLUMN minatdreq       DECFLOAT(16) NOT NULL,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  noofleavesallocated            FOR COLUMN nolvsalc        DECFLOAT(16) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_leavetype_key PRIMARY KEY (hr_leavetype_id),
  CONSTRAINT hr_leavetype_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_leavetype_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_leavetype_isadjacentholidayasleave_check CHECK (isadjacentholidayasleave in ('Y','N')),
  CONSTRAINT hr_leavetype_isallowedencashment_check CHECK (isallowedencashment in ('Y','N')),
  CONSTRAINT hr_leavetype_ishalfdayleaveallowed_check CHECK (ishalfdayleaveallowed in ('Y','N')),
  CONSTRAINT hr_leavetype_isleaverepeated_check CHECK (isleaverepeated in ('Y','N')),
  CONSTRAINT hr_leavetype_isleavesforwardtonextyear_check CHECK (isleavesforwardtonextyear in ('Y','N')),
  CONSTRAINT hr_leavetype_isprovidentfund_check CHECK (isprovidentfund in ('Y','N'))
)
;

