CREATE TABLE
 `mydataset.avocados_partitioned`
PARTITION BY
 RANGE_BUCKET(Year, GENERATE_ARRAY(2015,2022,1))
AS (
 SELECT *
 FROM `mydataset.avocado_base`
);
