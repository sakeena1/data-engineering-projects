CREATE DATABASE prodb_itv023283;

USE prodb_itv023283;

CREATE TABLE customer_src
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS AVRO
LOCATION '/user/itv023283/customer_stage_loc'
TBLPROPERTIES (
'avro.schema.url'='/user/itv023283/avscdirpro/customer_src_itv023283.avsc'
);

CREATE EXTERNAL TABLE customer_target_tab
PARTITIONED BY (
current_day STRING,
year STRING,
month STRING,
day STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS AVRO
LOCATION '/user/itv023283/customer_target_tab'
TBLPROPERTIES (
'avro.schema.url'='/user/itv023283/avscdirpro/customer_src_itv023283.avsc'
);
