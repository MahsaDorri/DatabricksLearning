-- Databricks notebook source
DROP TABLE IF EXISTS managed_default;

-- COMMAND ----------

CREATE TABLE managed_default (
  width INT,
  length INT,
  chight INT
)

-- COMMAND ----------

INSERT INTO managed_default
VALUES (3, 2, 1)

-- COMMAND ----------

describe extended managed_default

-- COMMAND ----------

create schema new_default

-- COMMAND ----------

describe database extended new_default

-- COMMAND ----------

use new_default

-- COMMAND ----------

DESCRIBE TABLE EXTENDED new_default.managed_new_default;

-- COMMAND ----------

create table managed_new_default (width INT, length INT, heighty INT)

-- COMMAND ----------

insert into managed_new_default values (3,  2,  1)

-- COMMAND ----------

create table external_new_default (width INT, length INT, heighty INT)
location 'dbfs:/user/hive/warehouse/new_default';

-- COMMAND ----------

drop table new_default;

-- COMMAND ----------


