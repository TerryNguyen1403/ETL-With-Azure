-------------------------------------
-- CREATE Apartment Cleaned Data View
-------------------------------------

CREATE VIEW gold.apartment AS SELECT * FROM OPENROWSET(
    BULK 'https://apartmentdatastorage.dfs.core.windows.net/silver/Cleaned_Data/',
    FORMAT = 'parquet'
) AS quer1;