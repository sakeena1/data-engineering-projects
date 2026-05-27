# data-engineering-projects
Data Engineering portfolio with Hadoop, Hive, Sqoop, Avro, PySpark, and SQL projects


# End-to-End Data Ingestion Pipeline using Sqoop, Hive, HDFS, and Avro

## Project Overview
This project demonstrates an end-to-end ETL/data ingestion pipeline using MySQL, Apache Sqoop, Hadoop HDFS, Hive, and Avro format.

The pipeline imports customer data incrementally from MySQL into HDFS using Sqoop and stores it in Avro format. Hive external and partitioned tables are created on top of HDFS data for analytics and querying.

---

## Technologies Used
- MySQL
- Apache Sqoop
- Hadoop HDFS
- Apache Hive
- Avro
- Linux Shell Scripting
- SQL

---

## Architecture Flow

MySQL → Sqoop → HDFS (Avro) → Hive External Table → Partitioned Hive Table

---

## Features
- Incremental data loading using Sqoop append mode
- Avro schema management
- Hive external table creation
- Partitioned Hive target table
- HDFS schema storage
- End-to-end Hadoop ecosystem workflow

---

## Steps Performed

### 1. Created Source Table in MySQL
- Created customer source table
- Inserted sample customer records

### 2. Imported Data using Sqoop
- Used Sqoop incremental append import
- Imported data into HDFS
- Stored data in Avro format

### 3. Uploaded Avro Schema to HDFS
- Extracted and uploaded `.avsc` schema file

### 4. Created Hive External Table
- Integrated Avro schema with Hive
- Queried imported data

### 5. Created Partitioned Hive Table
- Prepared partitioned target table for scalable querying

---

## Sample Sqoop Command

```bash
sqoop import \
--connect jdbc:mysql://ms.itversity.com/nyse_export \
--username nyse_user \
--password-file file:///home/itv023283/passfile \
--table customer_src_itv023283 \
--incremental append \
--check-column id \
--last-value 0 \
--as-avrodatafile
