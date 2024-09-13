-- Databricks notebook source
create table employees
(id int, name string, salary double);

-- COMMAND ----------

INSERT INTO employees
VALUES 
(1, "Adam", 3500.0),
(2, "Sarah", 5500.2),
(3, "Thomas", 2299.3),
(4, "Kim", 7654.0),
(5, "Anna", 43578.98),
(6, "John", 99876.3)

-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

update employees set salary = salary +100
where name Like "A%"

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

select * from employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

select * from employees version as of 1

-- COMMAND ----------

select * from employees@v1

-- COMMAND ----------

select * from employees

-- COMMAND ----------

restore table employees to version as of 2

-- COMMAND ----------

select * from employees

-- COMMAND ----------


DESCRIBE HISTORY employees

-- COMMAND ----------

optimize employees zorder by id

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

vacuum employees

-- COMMAND ----------

set spark.databricks.delta.retentionDurationCheck.enabled = false;

-- COMMAND ----------

vacuum employees retain 0 hours

-- COMMAND ----------

select * from employees

-- COMMAND ----------

drop table employees
