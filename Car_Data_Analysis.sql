create schema cars;
use cars;
-- READ DATA--
select * from car_dekho;
-- total count --
select count(*) from car_dekho;
-- How many cars will be available in 2023 --
select count(*) from car_dekho where year=2023;
-- how many cars is available in 2020 2021 2022 --
select count(*) from car_dekho where year in(2020,2021,2022) group by year;
-- print total of all cars by year --
select year, count(*) from car_dekho group by year; 
-- How many deisel cars will there be in 2020 --
select count(*) from car_dekho where year=2020 and fuel="Diesel";
-- How many petrol cars will there be in 2020 --
select count(*) from car_dekho where year=2020 and fuel="Petrol";
-- print all the fuel cars come by all years --
select year, count(*) from car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho where fuel="Diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;
-- which year had more than 100 cars--
select year, count(*) from car_dekho group by year having count(*)>100;
-- all car details between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;