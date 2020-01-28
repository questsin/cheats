SELECT <column(s)> FROM <fact_table> 
  JOIN <dim_table> ON <condition(s)> 
  WHERE <source_filter_condition> 
  GROUP BY <dim_table_column(s)> 
    HAVING <result_filter_condition> 
  ORDER BY <source_or_result_column(s)>
  
SELECT S.[SalesAmount] AS [Sales]
FROM [FactResellerSales] AS S

SELECT S.[SalesAmount] AS [Sales], R.[BusinessType],R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]

SELECT S.[SalesAmount] AS [Sales], R.[BusinessType],R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]
WHERE R.[BusinessType] = 'Warehouse'

SELECT S.[SalesAmount] AS [Sales], R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]
WHERE R.[BusinessType] = 'Warehouse'

SELECT SUM(S.[SalesAmount]) AS [Sales], R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]
WHERE R.[BusinessType] = 'Warehouse'
GROUP BY R.[ResellerName]

SELECT SUM(S.[SalesAmount]) AS [Sales], R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]
WHERE R.[BusinessType] = 'Warehouse'
GROUP BY R.[ResellerName]
HAVING SUM(S.[SalesAmount]) > 700000

SELECT SUM(S.[SalesAmount]) AS [Sales], R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]
WHERE R.[BusinessType] = 'Warehouse'
GROUP BY R.[ResellerName]
HAVING SUM(S.[SalesAmount]) > 700000
ORDER BY [Sales] DESC

SELECT TOP 10 SUM(S.[SalesAmount]) AS [Sales], R.[ResellerName]
FROM [FactResellerSales] AS S
JOIN [DimReseller] AS R ON S.[ResellerKey] = R.[ResellerKey]
WHERE R.[BusinessType] = 'Warehouse'
GROUP BY R.[ResellerName]
ORDER BY [Sales] DESC

