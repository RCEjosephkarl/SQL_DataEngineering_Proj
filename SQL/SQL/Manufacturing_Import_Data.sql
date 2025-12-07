----------------------------------------------------------------------
--CHECK IF TABLE ALREADY EXISTS--
----------------------------------------------------------------------
DROP TABLE IF EXISTS large_manufacturer_2015;
DROP TABLE IF EXISTS small_manufacturer_2015;
DROP TABLE IF EXISTS large_manufacturer_2016;
DROP TABLE IF EXISTS small_manufacturer_2016;
DROP TABLE IF EXISTS large_manufacturer_2017;
DROP TABLE IF EXISTS small_manufacturer_2017;
----------------------------------------------------------------------
--CREATE TABLE large_manufacturer_2015--
----------------------------------------------------------------------
CREATE TABLE large_manufacturer_2015 (
industry_desc VARCHAR(512),
est_number VARCHAR(64),
total_employment VARCHAR(64),
paid_employees VARCHAR(64),
total_income VARCHAR(64),
total_exp VARCHAR(64),
compensation VARCHAR(64),
other_exp VARCHAR(64),
value_of_output VARCHAR(64),
intermediate_exp VARCHAR(64),
value_added VARCHAR(64),
tf_assets VARCHAR(64),
change_inv VARCHAR(64),
subsidy VARCHAR(64),
commerce_transaction VARCHAR(64)
);

--importing data from OpenSTAT
COPY large_manufacturer_2015
FROM 'C:\personal_projects\data\data_science_analytics\Project SPARTA Y5\SPCapstone004_KJCacao\SPCapstone004_KJCacao\OpenstatPSA\EconomicStat\Manufacturing\2015\large_manufacturer_2015.csv' 
DELIMITER ','
CSV HEADER;


----------------------------------------------------------------------
--CREATE TABLE small_manufacturer_2015--
----------------------------------------------------------------------
CREATE TABLE small_manufacturer_2015 (
industry_desc VARCHAR(512),
est_number VARCHAR(64),
total_employment VARCHAR(64),
paid_employees VARCHAR(64),
total_income VARCHAR(64),
total_exp VARCHAR(64),
compensation VARCHAR(64),
other_exp VARCHAR(64),
value_of_output VARCHAR(64),
intermediate_exp VARCHAR(64),
value_added VARCHAR(64),
tf_assets VARCHAR(64),
change_inv VARCHAR(64),
subsidy VARCHAR(64),
commerce_transaction VARCHAR(64)
);

--importing data from OpenSTAT
COPY small_manufacturer_2015
FROM 'C:\personal_projects\data\data_science_analytics\Project SPARTA Y5\SPCapstone004_KJCacao\SPCapstone004_KJCacao\OpenstatPSA\EconomicStat\Manufacturing\2015\small_manufacturer_2015.csv' 
DELIMITER ','
CSV HEADER;

----------------------------------------------------------------------
--CREATE TABLE large_manufacturer_2016--
----------------------------------------------------------------------

CREATE TABLE large_manufacturer_2016 (
industry_desc VARCHAR(512),
est_number VARCHAR(64),
total_employment VARCHAR(64),
paid_employees VARCHAR(64),
total_income VARCHAR(64),
total_exp VARCHAR(64),
compensation VARCHAR(64),
other_exp VARCHAR(64),
value_of_output VARCHAR(64),
intermediate_exp VARCHAR(64),
value_added VARCHAR(64),
tf_assets VARCHAR(64),
change_inv VARCHAR(64),
subsidy VARCHAR(64),
commerce_transaction VARCHAR(64)
);

--importing data from OpenSTAT
COPY large_manufacturer_2016
FROM 'C:\personal_projects\data\data_science_analytics\Project SPARTA Y5\SPCapstone004_KJCacao\SPCapstone004_KJCacao\OpenstatPSA\EconomicStat\Manufacturing\2016\large_manufacturer_2016.csv'
DELIMITER ','
CSV HEADER;

----------------------------------------------------------------------
--CREATE TABLE small_manufacturer_2016--
----------------------------------------------------------------------

CREATE TABLE small_manufacturer_2016 (
industry_desc VARCHAR(512),
est_number VARCHAR(64),
total_employment VARCHAR(64),
paid_employees VARCHAR(64),
total_income VARCHAR(64),
total_exp VARCHAR(64),
compensation VARCHAR(64),
other_exp VARCHAR(64),
value_of_output VARCHAR(64),
intermediate_exp VARCHAR(64),
value_added VARCHAR(64),
tf_assets VARCHAR(64),
change_inv VARCHAR(64),
subsidy VARCHAR(64),
commerce_transaction VARCHAR(64)
);

--importing data from OpenSTAT
COPY small_manufacturer_2016
FROM 'C:\personal_projects\data\data_science_analytics\Project SPARTA Y5\SPCapstone004_KJCacao\SPCapstone004_KJCacao\OpenstatPSA\EconomicStat\Manufacturing\2016\small_manufacturer_2016.csv' 
DELIMITER ','
CSV HEADER;

----------------------------------------------------------------------
--CREATE TABLE large_manufacturer_2017--
----------------------------------------------------------------------

CREATE TABLE large_manufacturer_2017 (
industry_desc VARCHAR(512),
est_number VARCHAR(64),
total_employment VARCHAR(64),
paid_employees VARCHAR(64),
total_income VARCHAR(64),
total_exp VARCHAR(64),
compensation VARCHAR(64),
other_exp VARCHAR(64),
value_of_output VARCHAR(64),
intermediate_exp VARCHAR(64),
value_added VARCHAR(64),
tf_assets VARCHAR(64),
change_inv VARCHAR(64),
subsidy VARCHAR(64),
commerce_transaction VARCHAR(64)
);

--importing data from OpenSTAT
COPY large_manufacturer_2017
FROM 'C:\personal_projects\data\data_science_analytics\Project SPARTA Y5\SPCapstone004_KJCacao\SPCapstone004_KJCacao\OpenstatPSA\EconomicStat\Manufacturing\2017\large_manufacturer_2017.csv' 
DELIMITER ','
CSV HEADER;

----------------------------------------------------------------------
--CREATE TABLE small_manufacturer_2017--
----------------------------------------------------------------------

CREATE TABLE small_manufacturer_2017 (
industry_desc VARCHAR(512),
est_number VARCHAR(64),
total_employment VARCHAR(64),
paid_employees VARCHAR(64),
total_income VARCHAR(64),
total_exp VARCHAR(64),
compensation VARCHAR(64),
other_exp VARCHAR(64),
value_of_output VARCHAR(64),
intermediate_exp VARCHAR(64),
value_added VARCHAR(64),
tf_assets VARCHAR(64),
change_inv VARCHAR(64),
subsidy VARCHAR(64),
commerce_transaction VARCHAR(64)
);

--importing data from OpenSTAT
COPY small_manufacturer_2017
FROM 'C:\personal_projects\data\data_science_analytics\Project SPARTA Y5\SPCapstone004_KJCacao\SPCapstone004_KJCacao\OpenstatPSA\EconomicStat\Manufacturing\2017\small_manufacturer_2017.csv' 
DELIMITER ','
CSV HEADER;


SELECT * FROM large_manufacturer_2015;
SELECT * FROM large_manufacturer_2016;
SELECT * FROM large_manufacturer_2017;
SELECT * FROM small_manufacturer_2015;
SELECT * FROM small_manufacturer_2016;
SELECT * FROM small_manufacturer_2017;

--Check out the industry description
DROP TABLE IF EXISTS industry_description CASCADE;
CREATE TABLE industry_description(
id SERIAL NOT NULL,
industry_desc VARCHAR(512) NOT NULL,
ind_code INTEGER PRIMARY KEY
);

INSERT INTO industry_description (industry_desc, ind_code)
(SELECT industry_desc, ('15' || ROW_NUMBER() OVER()):: INTEGER AS ind_code
FROM large_manufacturer_2015)
;

INSERT INTO industry_description (industry_desc, ind_code)
(SELECT industry_desc, ('16' ||  ROW_NUMBER() OVER()):: INTEGER AS ind_code
FROM large_manufacturer_2016)
;

INSERT INTO industry_description (industry_desc, ind_code)
(SELECT industry_desc, ('17' ||  ROW_NUMBER() OVER()):: INTEGER AS ind_code
FROM large_manufacturer_2017)
;

SELECT industry_desc, COUNT(*) FROM industry_description
GROUP BY ind_code
ORDER BY COUNT(*) DESC;

--Create YEAR Table
DROP TABLE IF EXISTS year;
CREATE TABLE year(
year integer PRIMARY KEY);

INSERT INTO year VALUES (2015);
INSERT INTO year VALUES (2016);
INSERT INTO year VALUES (2017);

SELECT * FROM year;

-- Classify again with the industry size
DROP TABLE IF EXISTS employment_size;
CREATE TABLE employment_size(
emp_code VARCHAR(5) PRIMARY KEY,
emp_size VARCHAR(32) NOT NULL);

INSERT INTO employment_size VALUES ('A', '20 and over');
INSERT INTO employment_size VALUES ('B', 'Less than 20');

SELECT * FROM employment_size;

