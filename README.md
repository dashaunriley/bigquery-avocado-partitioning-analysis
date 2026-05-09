# BigQuery Partitioning and Clustering Performance Optimization Project

## Overview

This project demonstrates how table partitioning and clustering improve query performance in Google BigQuery using historical avocado sales data (2015–2021).

The objective was to compare execution efficiency between:

- Non-partitioned tables
- Partitioned tables
- Partitioned + clustered tables

## Tools Used

- Google BigQuery
- SQL
- Data partitioning
- Table clustering
- Execution performance analysis

## Dataset

Avocado Sales Dataset (2015–2021)  
Source: Kaggle

## Process

### Step 1: Uploaded dataset into BigQuery
Imported the avocado sales CSV dataset into a BigQuery dataset named `mydataset`.

### Step 2: Created baseline table
Created a standard table without partitioning or clustering to serve as a performance baseline.

### Step 3: Created partitioned table
Partitioned the dataset by year using integer range partitioning.

### Step 4: Created clustered table
Clustered the partitioned table by avocado type to optimize filtering performance.

### Step 5: Compared query performance
Executed aggregation queries against all tables and analyzed execution details including records read and bytes processed.

## Example Query

```sql
SELECT
 year,
 COUNT(*) AS number_avocados,
 SUM(TotalVolume) AS sum_TotalVolume,
 SUM(AveragePrice) AS sum_AveragePrice
FROM `mydataset.avocados_clustered`
WHERE type = 'organic'
GROUP BY year
ORDER BY year;
```

## Key Insight

Partitioning reduced scanned data by limiting queries to relevant year ranges.

Clustering further optimized filtering by avocado type, improving query efficiency and reducing processing overhead.

## Outcome

Partitioned and clustered tables demonstrated improved query performance compared to non-optimized tables, validating optimization techniques commonly used in business intelligence and cloud data warehousing environments.
