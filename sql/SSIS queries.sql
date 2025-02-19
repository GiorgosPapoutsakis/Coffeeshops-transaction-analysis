-- Dimension Product
INSERT INTO [coffeshops].dbo.[ProductDim]
Select Distinct product_id, product_category, product_type, product_detail 
From dbo.[Staging]

-- Dimension Store
INSERT INTO [coffeshops].dbo.[StoreDim]
Select Distinct store_id, store_location, latitude, longitude
From dbo.[Staging]

-- Dimension Time
INSERT INTO [coffeshops].dbo.[TimeDim]
Select Distinct transaction_time, hour, minutes, seconds, time_of_day
From dbo.[Staging]

-- Dimension Date
INSERT INTO [coffeshops].dbo.[DateDim]
Select Distinct transaction_date ,year, month , day,day_name, month_name, isWeekend
From dbo.[Staging]

-- Fact Table Transactions
INSERT INTO [coffeshops].[dbo].[TransactionFact]
SELECT 
      [index],
      [transaction_id],
      [product_id],
      [store_id],
      [transaction_date],
      [transaction_time],
      [unit_price],
      [transaction_qty],
      [total_amount]
FROM [coffeshops].[dbo].[Staging]


