-- CREATE SOURCE DATA TABLE --

create table source_cars_data
(
Branch_ID varchar(200),
Dealer_ID varchar(200),
Model_ID varchar(200),
Revenue bigint,
Units_Sold bigint,
Date_ID varchar(200),
Day int,
Month int,
year int,
branchName varchar(200),
DealerName varchar(200)
)

-- CHECK THE COUNTS --

select count(*) from source_cars_data
