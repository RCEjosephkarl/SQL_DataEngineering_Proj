-----------------------------------------------------------------------
--Converting the proper data type--
-----------------------------------------------------------------------

ALTER TABLE large_manufacturer_2015 ALTER COLUMN est_number TYPE INTEGER USING est_number::INTEGER;
ALTER TABLE large_manufacturer_2015 ALTER COLUMN total_employment TYPE INTEGER USING total_employment::INTEGER;
ALTER TABLE large_manufacturer_2015 ALTER COLUMN paid_employees TYPE INTEGER USING paid_employees::INTEGER ;
ALTER TABLE large_manufacturer_2015 ALTER COLUMN total_income TYPE DECIMAL (15,2) USING total_income::DECIMAL(15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN total_exp TYPE DECIMAL (15,2) USING total_exp::DECIMAL(15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN compensation TYPE DECIMAL (15,2) USING compensation::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN other_exp TYPE  DECIMAL (15,2) USING other_exp::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN value_of_output TYPE DECIMAL (15,2) USING value_of_output::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN intermediate_exp TYPE DECIMAL (15,2) USING intermediate_exp::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN value_added TYPE DECIMAL (15,2) USING value_added::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN tf_assets TYPE DECIMAL (15,2) USING tf_assets::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN change_inv TYPE DECIMAL (15,2) USING change_inv::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN subsidy TYPE DECIMAL (15,2) USING subsidy::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2015 ALTER COLUMN commerce_transaction TYPE DECIMAL (15,2) USING commerce_transaction::DECIMAL (15,2);

ALTER TABLE large_manufacturer_2016 ALTER COLUMN est_number TYPE INTEGER USING est_number::INTEGER;
ALTER TABLE large_manufacturer_2016 ALTER COLUMN total_employment TYPE INTEGER USING total_employment::INTEGER;
ALTER TABLE large_manufacturer_2016 ALTER COLUMN paid_employees TYPE INTEGER USING paid_employees::INTEGER ;
ALTER TABLE large_manufacturer_2016 ALTER COLUMN total_income TYPE DECIMAL (15,2) USING total_income::DECIMAL(15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN total_exp TYPE DECIMAL (15,2) USING total_exp::DECIMAL(15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN compensation TYPE DECIMAL (15,2) USING compensation::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN other_exp TYPE  DECIMAL (15,2) USING other_exp::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN value_of_output TYPE DECIMAL (15,2) USING value_of_output::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN intermediate_exp TYPE DECIMAL (15,2) USING intermediate_exp::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN value_added TYPE DECIMAL (15,2) USING value_added::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN tf_assets TYPE DECIMAL (15,2) USING tf_assets::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN change_inv TYPE DECIMAL (15,2) USING change_inv::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN subsidy TYPE DECIMAL (15,2) USING subsidy::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2016 ALTER COLUMN commerce_transaction TYPE DECIMAL (15,2) USING commerce_transaction::DECIMAL (15,2);

ALTER TABLE large_manufacturer_2017 ALTER COLUMN est_number TYPE INTEGER USING est_number::INTEGER;
ALTER TABLE large_manufacturer_2017 ALTER COLUMN total_employment TYPE INTEGER USING total_employment::INTEGER;
ALTER TABLE large_manufacturer_2017 ALTER COLUMN paid_employees TYPE INTEGER USING paid_employees::INTEGER ;
ALTER TABLE large_manufacturer_2017 ALTER COLUMN total_income TYPE DECIMAL (15,2) USING total_income::DECIMAL(15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN total_exp TYPE DECIMAL (15,2) USING total_exp::DECIMAL(15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN compensation TYPE DECIMAL (15,2) USING compensation::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN other_exp TYPE  DECIMAL (15,2) USING other_exp::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN value_of_output TYPE DECIMAL (15,2) USING value_of_output::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN intermediate_exp TYPE DECIMAL (15,2) USING intermediate_exp::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN value_added TYPE DECIMAL (15,2) USING value_added::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN tf_assets TYPE DECIMAL (15,2) USING tf_assets::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN change_inv TYPE DECIMAL (15,2) USING change_inv::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN subsidy TYPE DECIMAL (15,2) USING subsidy::DECIMAL (15,2);
ALTER TABLE large_manufacturer_2017 ALTER COLUMN commerce_transaction TYPE DECIMAL (15,2) USING commerce_transaction::DECIMAL (15,2);

ALTER TABLE small_manufacturer_2015 ALTER COLUMN est_number TYPE INTEGER USING est_number::INTEGER;
ALTER TABLE small_manufacturer_2015 ALTER COLUMN total_employment TYPE INTEGER USING total_employment::INTEGER;
ALTER TABLE small_manufacturer_2015 ALTER COLUMN paid_employees TYPE INTEGER USING paid_employees::INTEGER ;
ALTER TABLE small_manufacturer_2015 ALTER COLUMN total_income TYPE DECIMAL (15,2) USING total_income::DECIMAL(15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN total_exp TYPE DECIMAL (15,2) USING total_exp::DECIMAL(15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN compensation TYPE DECIMAL (15,2) USING compensation::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN other_exp TYPE  DECIMAL (15,2) USING other_exp::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN value_of_output TYPE DECIMAL (15,2) USING value_of_output::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN intermediate_exp TYPE DECIMAL (15,2) USING intermediate_exp::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN value_added TYPE DECIMAL (15,2) USING value_added::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN tf_assets TYPE DECIMAL (15,2) USING tf_assets::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN change_inv TYPE DECIMAL (15,2) USING change_inv::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN subsidy TYPE DECIMAL (15,2) USING subsidy::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2015 ALTER COLUMN commerce_transaction TYPE DECIMAL (15,2) USING commerce_transaction::DECIMAL (15,2);

ALTER TABLE small_manufacturer_2016 ALTER COLUMN est_number TYPE INTEGER USING est_number::INTEGER;
ALTER TABLE small_manufacturer_2016 ALTER COLUMN total_employment TYPE INTEGER USING total_employment::INTEGER;
ALTER TABLE small_manufacturer_2016 ALTER COLUMN paid_employees TYPE INTEGER USING paid_employees::INTEGER ;
ALTER TABLE small_manufacturer_2016 ALTER COLUMN total_income TYPE DECIMAL (15,2) USING total_income::DECIMAL(15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN total_exp TYPE DECIMAL (15,2) USING total_exp::DECIMAL(15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN compensation TYPE DECIMAL (15,2) USING compensation::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN other_exp TYPE  DECIMAL (15,2) USING other_exp::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN value_of_output TYPE DECIMAL (15,2) USING value_of_output::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN intermediate_exp TYPE DECIMAL (15,2) USING intermediate_exp::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN value_added TYPE DECIMAL (15,2) USING value_added::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN tf_assets TYPE DECIMAL (15,2) USING tf_assets::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN change_inv TYPE DECIMAL (15,2) USING change_inv::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN subsidy TYPE DECIMAL (15,2) USING subsidy::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2016 ALTER COLUMN commerce_transaction TYPE DECIMAL (15,2) USING commerce_transaction::DECIMAL (15,2);

ALTER TABLE small_manufacturer_2017 ALTER COLUMN est_number TYPE INTEGER USING est_number::INTEGER;
ALTER TABLE small_manufacturer_2017 ALTER COLUMN total_employment TYPE INTEGER USING total_employment::INTEGER;
ALTER TABLE small_manufacturer_2017 ALTER COLUMN paid_employees TYPE INTEGER USING paid_employees::INTEGER ;
ALTER TABLE small_manufacturer_2017 ALTER COLUMN total_income TYPE DECIMAL (15,2) USING total_income::DECIMAL(15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN total_exp TYPE DECIMAL (15,2) USING total_exp::DECIMAL(15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN compensation TYPE DECIMAL (15,2) USING compensation::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN other_exp TYPE  DECIMAL (15,2) USING other_exp::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN value_of_output TYPE DECIMAL (15,2) USING value_of_output::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN intermediate_exp TYPE DECIMAL (15,2) USING intermediate_exp::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN value_added TYPE DECIMAL (15,2) USING value_added::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN tf_assets TYPE DECIMAL (15,2) USING tf_assets::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN change_inv TYPE DECIMAL (15,2) USING change_inv::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN subsidy TYPE DECIMAL (15,2) USING subsidy::DECIMAL (15,2);
ALTER TABLE small_manufacturer_2017 ALTER COLUMN commerce_transaction TYPE DECIMAL (15,2) USING commerce_transaction::DECIMAL (15,2);


--to check the datasets again--
SELECT * FROM large_manufacturer_2015 ORDER BY ind_code;
SELECT * FROM large_manufacturer_2016 ORDER BY ind_code;
SELECT * FROM large_manufacturer_2017 ORDER BY ind_code;
SELECT * FROM small_manufacturer_2015 ORDER BY ind_code;
SELECT * FROM small_manufacturer_2016 ORDER BY ind_code;
SELECT * FROM small_manufacturer_2017 ORDER BY ind_code;