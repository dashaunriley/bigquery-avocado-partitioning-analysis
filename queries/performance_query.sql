SELECT
 year,
 COUNT(*) AS number_avocados,
 SUM(TotalVolume) as sum_TotalVolume,
 SUM(AveragePrice) as sum_AveragePrice
FROM `mydataset.avocados_clustered`
WHERE type = 'organic'
GROUP BY year
ORDER BY year ASC;
