----- view the dataset = the data is clean no neet to aggregate, clean NULL value or empty strings
SELECT *
FROM workspace.default.retail_sales_dataset;
 --------- Age group so that we can get the (age group analysis)
 SELECT *,
 CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
      WHEN Age BETWEEN 26 AND 35 THEN '26-35'
      WHEN Age BETWEEN 36 AND 45 THEN '36-45'
      ELSE '46+'
      END AS Age_group
 FROM workspace.default.retail_sales_dataset;

---------- Data collection date  (when the data was collected)
 SELECT min(Date) AS start_date,
        max(Date) AS end_date
 FROM workspace.default.retail_sales_dataset








