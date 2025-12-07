----------------------------------------------------------------------
--Deleting unnecessary data for manufacturer data--
----------------------------------------------------------------------

DELETE 
	FROM large_manufacturer_2015
	WHERE 
	est_number IN ('c','s','..') OR
	total_exp IN ('c','s','..') OR
	total_employment IN ('c','s','..') OR
	paid_employees IN ('c','s','..') OR
	total_income IN ('c','s','..') OR
	compensation IN ('c','s','..') OR
	other_exp IN ('c','s','..') OR
	value_of_output IN ('c','s','..') OR
	intermediate_exp  IN ('c','s','..') OR
	value_added  IN ('c','s','..') OR
	tf_assets IN ('c','s','..') OR
	change_inv IN ('c','s','..') OR
	subsidy IN ('c','s','..') OR
	commerce_transaction IN ('c','s','..');

DELETE 
	FROM small_manufacturer_2015
	WHERE 
	est_number IN ('c','s','..') OR
	total_exp IN ('c','s','..') OR
	total_employment IN ('c','s','..') OR
	paid_employees IN ('c','s','..') OR
	total_income IN ('c','s','..') OR
	compensation IN ('c','s','..') OR
	other_exp IN ('c','s','..') OR
	value_of_output IN ('c','s','..') OR
	intermediate_exp  IN ('c','s','..') OR
	value_added  IN ('c','s','..') OR
	tf_assets IN ('c','s','..') OR
	change_inv IN ('c','s','..') OR
	subsidy IN ('c','s','..') OR
	commerce_transaction IN ('c','s','..');

DELETE 
	FROM large_manufacturer_2016
	WHERE 
	est_number IN ('c','s','..') OR
	total_exp IN ('c','s','..') OR
	total_employment IN ('c','s','..') OR
	paid_employees IN ('c','s','..') OR
	total_income IN ('c','s','..') OR
	compensation IN ('c','s','..') OR
	other_exp IN ('c','s','..') OR
	value_of_output IN ('c','s','..') OR
	intermediate_exp  IN ('c','s','..') OR
	value_added  IN ('c','s','..') OR
	tf_assets IN ('c','s','..') OR
	change_inv IN ('c','s','..') OR
	subsidy IN ('c','s','..') OR
	commerce_transaction IN ('c','s','..');

DELETE 
	FROM small_manufacturer_2016
	WHERE 
	est_number IN ('c','s','..') OR
	total_exp IN ('c','s','..') OR
	total_employment IN ('c','s','..') OR
	paid_employees IN ('c','s','..') OR
	total_income IN ('c','s','..') OR
	compensation IN ('c','s','..') OR
	other_exp IN ('c','s','..') OR
	value_of_output IN ('c','s','..') OR
	intermediate_exp  IN ('c','s','..') OR
	value_added  IN ('c','s','..') OR
	tf_assets IN ('c','s','..') OR
	change_inv IN ('c','s','..') OR
	subsidy IN ('c','s','..') OR
	commerce_transaction IN ('c','s','..');

DELETE 
	FROM large_manufacturer_2017
	WHERE 
	est_number IN ('c','s','..') OR
	total_exp IN ('c','s','..') OR
	total_employment IN ('c','s','..') OR
	paid_employees IN ('c','s','..') OR
	total_income IN ('c','s','..') OR
	compensation IN ('c','s','..') OR
	other_exp IN ('c','s','..') OR
	value_of_output IN ('c','s','..') OR
	intermediate_exp  IN ('c','s','..') OR
	value_added  IN ('c','s','..') OR
	tf_assets IN ('c','s','..') OR
	change_inv IN ('c','s','..') OR
	subsidy IN ('c','s','..') OR
	commerce_transaction IN ('c','s','..');

DELETE 
	FROM small_manufacturer_2017
	WHERE 
	est_number IN ('c','s','..') OR
	total_exp IN ('c','s','..') OR
	total_employment IN ('c','s','..') OR
	paid_employees IN ('c','s','..') OR
	total_income IN ('c','s','..') OR
	compensation IN ('c','s','..') OR
	other_exp IN ('c','s','..') OR
	value_of_output IN ('c','s','..') OR
	intermediate_exp  IN ('c','s','..') OR
	value_added  IN ('c','s','..') OR
	tf_assets IN ('c','s','..') OR
	change_inv IN ('c','s','..') OR
	subsidy IN ('c','s','..') OR
	commerce_transaction IN ('c','s','..');


--Checking for loopholes of the transformation
SELECT * FROM large_manufacturer_2015 WHERE (ind_code IS NULL) OR (emp_code IS NULL) ORDER BY ind_code;
SELECT * FROM large_manufacturer_2016 WHERE (ind_code IS NULL) OR (emp_code IS NULL) ORDER BY ind_code;
SELECT * FROM large_manufacturer_2017 WHERE (ind_code IS NULL) OR (emp_code IS NULL) ORDER BY ind_code;
SELECT * FROM small_manufacturer_2015 WHERE (ind_code IS NULL) OR (emp_code IS NULL) ORDER BY ind_code;
SELECT * FROM small_manufacturer_2016 WHERE (ind_code IS NULL) OR (emp_code IS NULL) ORDER BY ind_code;
SELECT * FROM small_manufacturer_2017 WHERE (ind_code IS NULL) OR (emp_code IS NULL) ORDER BY ind_code;
	