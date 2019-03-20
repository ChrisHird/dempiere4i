-- Table: ad_attribute_value

-- DROP TABLE ad_attribute_value;

CREATE TABLE ad_attribute_value FOR SYSTEM NAME adattrv
(
  ad_attribute_id                FOR COLUMN ad_atrid        DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  v_number                                                  DECFLOAT(16),
  v_date                                                    TIMESTAMP,
  v_string                                                  VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_attribute_value_pkey PRIMARY KEY (ad_attribute_id, record_id)
)
  ;
