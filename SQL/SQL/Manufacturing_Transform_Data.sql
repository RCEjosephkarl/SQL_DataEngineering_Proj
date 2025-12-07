----------------------------------------------------------------------
--Transforming Data--
----------------------------------------------------------------------

--Adding column for foreign keys
ALTER TABLE large_manufacturer_2015 ADD COLUMN ind_code INTEGER;
ALTER TABLE large_manufacturer_2016 ADD COLUMN ind_code INTEGER;
ALTER TABLE large_manufacturer_2017 ADD COLUMN ind_code INTEGER;
ALTER TABLE small_manufacturer_2015 ADD COLUMN ind_code INTEGER;
ALTER TABLE small_manufacturer_2016 ADD COLUMN ind_code INTEGER;
ALTER TABLE small_manufacturer_2017 ADD COLUMN ind_code INTEGER;

ALTER TABLE large_manufacturer_2015 ADD COLUMN year INTEGER;
ALTER TABLE large_manufacturer_2016 ADD COLUMN year INTEGER;
ALTER TABLE large_manufacturer_2017 ADD COLUMN year INTEGER;
ALTER TABLE small_manufacturer_2015 ADD COLUMN year INTEGER;
ALTER TABLE small_manufacturer_2016 ADD COLUMN year INTEGER;
ALTER TABLE small_manufacturer_2017 ADD COLUMN year INTEGER;

ALTER TABLE large_manufacturer_2015 ADD COLUMN emp_code VARCHAR(5);
ALTER TABLE large_manufacturer_2016 ADD COLUMN emp_code VARCHAR(5);
ALTER TABLE large_manufacturer_2017 ADD COLUMN emp_code VARCHAR(5);
ALTER TABLE small_manufacturer_2015 ADD COLUMN emp_code VARCHAR(5);
ALTER TABLE small_manufacturer_2016 ADD COLUMN emp_code VARCHAR(5);
ALTER TABLE small_manufacturer_2017 ADD COLUMN emp_code VARCHAR(5);


--Rearranging the columns
DROP TABLE IF EXISTS large_manufacturer_2015_arr;
DROP TABLE IF EXISTS large_manufacturer_2016_arr;
DROP TABLE IF EXISTS large_manufacturer_2017_arr;
DROP TABLE IF EXISTS small_manufacturer_2015_arr;
DROP TABLE IF EXISTS small_manufacturer_2016_arr;
DROP TABLE IF EXISTS small_manufacturer_2017_arr;

CREATE TABLE large_manufacturer_2015_arr AS
(SELECT
industry_desc,
ind_code,
year,
emp_code,
est_number,
total_employment,
paid_employees,
total_income ,
total_exp,
compensation ,
other_exp ,
value_of_output ,
intermediate_exp ,
value_added ,
tf_assets ,
change_inv ,
subsidy ,
commerce_transaction
FROM large_manufacturer_2015);

CREATE TABLE large_manufacturer_2016_arr AS
(SELECT
industry_desc,
ind_code,
year,
emp_code,
est_number,
total_employment,
paid_employees,
total_income ,
total_exp,
compensation ,
other_exp ,
value_of_output ,
intermediate_exp ,
value_added ,
tf_assets ,
change_inv ,
subsidy ,
commerce_transaction
FROM large_manufacturer_2016);

CREATE TABLE large_manufacturer_2017_arr AS
(SELECT
industry_desc,
ind_code,
year,
emp_code,
est_number,
total_employment,
paid_employees,
total_income ,
total_exp,
compensation ,
other_exp ,
value_of_output ,
intermediate_exp ,
value_added ,
tf_assets ,
change_inv ,
subsidy ,
commerce_transaction
FROM large_manufacturer_2017);

CREATE TABLE small_manufacturer_2015_arr AS
(SELECT
industry_desc,
ind_code,
year,
emp_code,
est_number,
total_employment,
paid_employees,
total_income ,
total_exp,
compensation ,
other_exp ,
value_of_output ,
intermediate_exp ,
value_added ,
tf_assets ,
change_inv ,
subsidy ,
commerce_transaction
FROM small_manufacturer_2015);

CREATE TABLE small_manufacturer_2016_arr AS
(SELECT
industry_desc,
ind_code,
year,
emp_code,
est_number,
total_employment,
paid_employees,
total_income ,
total_exp,
compensation ,
other_exp ,
value_of_output ,
intermediate_exp ,
value_added ,
tf_assets ,
change_inv ,
subsidy ,
commerce_transaction
FROM small_manufacturer_2016);

CREATE TABLE small_manufacturer_2017_arr AS
(SELECT
industry_desc,
ind_code,
year,
emp_code,
est_number,
total_employment,
paid_employees,
total_income ,
total_exp,
compensation ,
other_exp ,
value_of_output ,
intermediate_exp ,
value_added ,
tf_assets ,
change_inv ,
subsidy ,
commerce_transaction
FROM small_manufacturer_2017);

DROP TABLE IF EXISTS large_manufacturer_2015;
DROP TABLE IF EXISTS small_manufacturer_2015;
DROP TABLE IF EXISTS large_manufacturer_2016;
DROP TABLE IF EXISTS small_manufacturer_2016;
DROP TABLE IF EXISTS large_manufacturer_2017;
DROP TABLE IF EXISTS small_manufacturer_2017;

ALTER TABLE large_manufacturer_2015_arr RENAME TO large_manufacturer_2015;
ALTER TABLE large_manufacturer_2016_arr RENAME TO large_manufacturer_2016;
ALTER TABLE large_manufacturer_2017_arr RENAME TO large_manufacturer_2017;
ALTER TABLE small_manufacturer_2015_arr RENAME TO small_manufacturer_2015;
ALTER TABLE small_manufacturer_2016_arr RENAME TO small_manufacturer_2016;
ALTER TABLE small_manufacturer_2017_arr RENAME TO small_manufacturer_2017;


-- Update large_manufacturer_2015 table
UPDATE large_manufacturer_2015
SET ind_code = industry_description.ind_code
FROM industry_description
WHERE large_manufacturer_2015.industry_desc = industry_description.industry_desc;

-- Update large_manufacturer_2016 table
UPDATE large_manufacturer_2016
SET ind_code = industry_description.ind_code
FROM industry_description
WHERE large_manufacturer_2016.industry_desc = industry_description.industry_desc;

-- Update large_manufacturer_2017 table
UPDATE large_manufacturer_2017
SET ind_code = industry_description.ind_code
FROM industry_description
WHERE large_manufacturer_2017.industry_desc = industry_description.industry_desc;

-- Update small_manufacturer_2015 table
UPDATE small_manufacturer_2015
SET ind_code = industry_description.ind_code
FROM industry_description
WHERE small_manufacturer_2015.industry_desc = industry_description.industry_desc;

-- Update small_manufacturer_2016 table
UPDATE small_manufacturer_2016
SET ind_code = industry_description.ind_code
FROM industry_description
WHERE small_manufacturer_2016.industry_desc = industry_description.industry_desc;

-- Update small_manufacturer_2017 table
UPDATE small_manufacturer_2017
SET ind_code = industry_description.ind_code
FROM industry_description
WHERE small_manufacturer_2017.industry_desc = industry_description.industry_desc;



UPDATE large_manufacturer_2015 SET year = 2015;
UPDATE large_manufacturer_2016 SET year = 2016;
UPDATE large_manufacturer_2017 SET year = 2017;
UPDATE small_manufacturer_2015 SET year = 2015;
UPDATE small_manufacturer_2016 SET year = 2016;
UPDATE small_manufacturer_2017 SET year = 2017;

UPDATE large_manufacturer_2015 SET emp_code = 'A';
UPDATE large_manufacturer_2016 SET emp_code = 'A';
UPDATE large_manufacturer_2017 SET emp_code = 'A';
UPDATE small_manufacturer_2015 SET emp_code = 'B';
UPDATE small_manufacturer_2016 SET emp_code = 'B';
UPDATE small_manufacturer_2017 SET emp_code = 'B';




----------------------------------------------------------------------
--Key Relationships--
----------------------------------------------------------------------
ALTER TABLE large_manufacturer_2015
	ADD CONSTRAINT fk_ind_code FOREIGN KEY (ind_code) REFERENCES industry_description(ind_code);
ALTER TABLE large_manufacturer_2016
	ADD CONSTRAINT fk_ind_code FOREIGN KEY (ind_code) REFERENCES industry_description(ind_code);
ALTER TABLE large_manufacturer_2017
	ADD CONSTRAINT fk_ind_code FOREIGN KEY (ind_code) REFERENCES industry_description(ind_code);

ALTER TABLE small_manufacturer_2015
	ADD CONSTRAINT fk_ind_code FOREIGN KEY (ind_code) REFERENCES industry_description(ind_code);
ALTER TABLE small_manufacturer_2016
	ADD CONSTRAINT fk_ind_code FOREIGN KEY (ind_code) REFERENCES industry_description(ind_code);
ALTER TABLE small_manufacturer_2017
	ADD CONSTRAINT fk_ind_code FOREIGN KEY (ind_code) REFERENCES industry_description(ind_code);

ALTER TABLE large_manufacturer_2015
	ADD CONSTRAINT fk_year FOREIGN KEY (year) REFERENCES year(year);
ALTER TABLE large_manufacturer_2016
	ADD CONSTRAINT fk_year FOREIGN KEY (year) REFERENCES year(year);
ALTER TABLE large_manufacturer_2017
	ADD CONSTRAINT fk_year FOREIGN KEY (year) REFERENCES year(year);

ALTER TABLE small_manufacturer_2015
	ADD CONSTRAINT fk_year FOREIGN KEY (year) REFERENCES year(year);
ALTER TABLE small_manufacturer_2016
	ADD CONSTRAINT fk_year FOREIGN KEY (year) REFERENCES year(year);
ALTER TABLE small_manufacturer_2017
	ADD CONSTRAINT fk_year FOREIGN KEY (year) REFERENCES year(year);

ALTER TABLE large_manufacturer_2015
	ADD CONSTRAINT fk_emp_size FOREIGN KEY (emp_code) REFERENCES employment_size(emp_code);
ALTER TABLE large_manufacturer_2016
	ADD CONSTRAINT fk_emp_size FOREIGN KEY (emp_code) REFERENCES employment_size(emp_code);
ALTER TABLE large_manufacturer_2017
	ADD CONSTRAINT fk_emp_size FOREIGN KEY (emp_code) REFERENCES employment_size(emp_code);

ALTER TABLE small_manufacturer_2015
	ADD CONSTRAINT fk_emp_size FOREIGN KEY (emp_code) REFERENCES employment_size(emp_code);
ALTER TABLE small_manufacturer_2016
	ADD CONSTRAINT fk_emp_size FOREIGN KEY (emp_code) REFERENCES employment_size(emp_code);
ALTER TABLE small_manufacturer_2017
	ADD CONSTRAINT fk_emp_size FOREIGN KEY (emp_code) REFERENCES employment_size(emp_code);