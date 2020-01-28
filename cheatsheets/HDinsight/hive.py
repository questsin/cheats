SELECT `ADDRESS`, `ZIP CODE`, `SALE PRICE`, `SQUARE FOOTAGE`
FROM newyorkrealestate.propertysales;

%jdbc(hive)
show databases;
select * from newyorkrealestate.propertysales limit 10 ;

%jdbc(hive)
select `sale price`, `square footage` from newyorkrealestate.propertysales 
where `sale price` < 20000000 AND `square footage` < 50000;
