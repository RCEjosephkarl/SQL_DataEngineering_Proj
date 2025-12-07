---------------------------------------------
--PRODUCT ETL FOR VISUALIZATION--
---------------------------------------------


--Manufacturer Data for 2015 to 2017
COPY (SELECT * FROM large_manufacturer_2015 UNION SELECT * FROM small_manufacturer_2015 ) TO 'C:\kjcc\DA\Project SPARTA Y5\Capstone\OpenstatPSA\EconomicStat\Manufacturing\2015\manufacturer_data_2015.csv' WITH (FORMAT CSV, HEADER);
COPY (SELECT * FROM large_manufacturer_2016 UNION SELECT * FROM small_manufacturer_2016 ) TO 'C:\kjcc\DA\Project SPARTA Y5\Capstone\OpenstatPSA\EconomicStat\Manufacturing\2016\manufacturer_data_2016.csv' WITH (FORMAT CSV, HEADER);
COPY (SELECT * FROM large_manufacturer_2017 UNION SELECT * FROM small_manufacturer_2017 ) TO 'C:\kjcc\DA\Project SPARTA Y5\Capstone\OpenstatPSA\EconomicStat\Manufacturing\2017\manufacturer_data_2017.csv' WITH (FORMAT CSV, HEADER);


--
SELECT * FROM year;
SELECT * FROM employment_size;
SELECT * FROM industry_description;