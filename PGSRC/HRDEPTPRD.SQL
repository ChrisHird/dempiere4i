-- Table: hr_departmentproduct

-- DROP TABLE hr_departmentproduct;

CREATE TABLE hr_departmentproduct FOR SYSTEM NAME hrdeptprd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_departmentproduct_id        FOR COLUMN hr_deptpid      DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0) NOT NULL,
  datefro                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  datet                                                     TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  qtyplan                                                   DECFLOAT(16) NOT NULL,
  actualqty                                                 DECFLOAT(16) NOT NULL,
  comments                                                  VARCHAR(255) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_departmentproduct_key PRIMARY KEY (hr_departmentproduct_id),
  CONSTRAINT hr_departmentproduct_isactive_check CHECK (isactive in ('Y','N'))
)
;

