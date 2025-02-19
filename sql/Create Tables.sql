-- Product Dimension
CREATE TABLE dbo.ProductDim (
    product_id INT PRIMARY KEY,
    product_category NVARCHAR(100),
    product_type NVARCHAR(100),
    product_detail NVARCHAR(200),
);

CREATE UNIQUE INDEX idx_product_id
ON dbo.ProductDim(product_id)
WITH (IGNORE_DUP_KEY = ON);


-- Store Dimension
CREATE TABLE dbo.StoreDim (
    store_id INT PRIMARY KEY,
    store_location NVARCHAR(200),
    latitude FLOAT,
    longitude FLOAT
);

CREATE UNIQUE INDEX idx_store_id
ON dbo.StoreDim(store_id)
WITH (IGNORE_DUP_KEY = ON);

-- Date Dimension
CREATE TABLE dbo.DateDim (
    transaction_date DATE PRIMARY KEY,
    year INT,
    month INT,
    day INT,
    day_name NVARCHAR(150),
    month_name NVARCHAR(150),
    isWeekend BIT
);

CREATE UNIQUE INDEX idx_transaction_date
ON dbo.DateDim(transaction_date)
WITH (IGNORE_DUP_KEY = ON);

-- Time Dimension
CREATE TABLE dbo.TimeDim (
    transaction_time TIME PRIMARY KEY,
    hour INT,
    minutes INT,
    seconds INT,
    time_of_day NVARCHAR(150)
);

CREATE UNIQUE INDEX idx_transaction_time
ON dbo.TimeDim(transaction_time)
WITH (IGNORE_DUP_KEY = ON);

-- Transaction Fact Table
CREATE TABLE dbo.TransactionFact (
    [index] INT PRIMARY KEY,
    transaction_id INT,      
    product_id INT NOT NULL,
    store_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    transaction_time TIME NOT NULL,
    unit_price FLOAT,
    transaction_qty INT,
    total_amount FLOAT,
    CONSTRAINT FK_Product FOREIGN KEY (product_id) REFERENCES dbo.ProductDim (product_id),
    CONSTRAINT FK_Store FOREIGN KEY (store_id) REFERENCES dbo.StoreDim (store_id),
    CONSTRAINT FK_Date FOREIGN KEY (transaction_date) REFERENCES dbo.DateDim (transaction_date),
    CONSTRAINT FK_Time FOREIGN KEY (transaction_time) REFERENCES dbo.TimeDim (transaction_time)
);