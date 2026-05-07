CREATE TABLE
 `mydataset.avocados_clustered`
PARTITION BY
 RANGE_BUCKET(Year, GENERATE_ARRAY(2015,2022,1))
CLUSTER BY
 type
AS (
 SELECT *
 FROM `mydataset.avocado_base`
);
