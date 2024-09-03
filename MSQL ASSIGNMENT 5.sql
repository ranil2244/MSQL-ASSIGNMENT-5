 CREATE DATABASE COUNTRY_FIELD;
 
 USE COUNTRY_FIELD;
 
 CREATE TABLE COUNTRY
 (COUNTRY_ID INT PRIMARY KEY ,
 COUNTRY_NAME VARCHAR(30) ,
 POPULATION  DECIMAL(30), 
 AREA VARCHAR (30)
 );
 
 SELECT * FROM COUNTRY;
 INSERT INTO COUNTRY (COUNTRY_ID,COUNTRY_NAME,POPULATION,AREA) VALUES
 
 (1 ,'India' ,500000 , 2973190),
 (2 ,'China' ,400000 , 9388211),
 (3 ,'USA',450000 , 9147420),
 (4 ,'UK' ,350000 , 770880),
 (5 ,'Nigeria' ,250000 , 910770),
 (6 ,'Brazil' ,250000 , 8358140),
 (7 ,'Canada' ,3550000 , 16376870),
 (8 ,'Australia' ,450900 ,1000000),
 (9 ,'Mexico' ,239000 , 1943950),
 (10 ,'Philippines' ,270000 , 298170);
 
 SELECT * FROM COUNTRY;
 
 
 CREATE TABLE PERSONS (PERSON_ID INT PRIMARY KEY NOT NULL,
 F_NAME VARCHAR (30)
 ,L_NAME VARCHAR(30)
 ,POPULATION DECIMAL(30)
 ,RATING DECIMAL(3.1)
 ,COUNTRY_ID DECIMAL (30)
 , COUNTRY_NAME VARCHAR(30)
 );
 SELECT * FROM PERSONS;
 
 INSERT INTO PERSONS (PERSON_ID,F_NAME,L_NAME,POPULATION,RATING,COUNTRY_ID,COUNTRY_NAME) VALUES
 
 (30,'Linto' ,'Jhon' , 500000 ,2.0 , 1 ,'India'),
 (29, 'Mirchel' ,'Khan' ,400000 ,1.0 , 2 ,null),
 (28, 'Mubarak' ,'Sidhik',450000 ,1.6 , 3 ,'UK'),
(27, 'Siraj' ,'Sahid' ,350000 ,2.7 , 4 , 'USA'),
(26, 'Rhul' ,'Menon' , 250000 ,1.6 , 5 ,'Nigeria'),
(25, 'Namitha' ,'Premodh' ,250000 ,6.5 ,6 ,'Brazil'),
(24, 'Vidhu'  ,'Predhavan' ,355000 ,4.6 , 7 ,null),
(23, 'Nikhil' , 'Sanker' , 450900 ,3.9 , 8 ,'Canada'),
(22, 'Virat' ,'Kholi' , 230900 ,1.4 ,  9 ,null),
(21, 'Rohit' ,'Sharma' ,270000 ,5.9 , 10 , 'Philippines');


#(1). Write an SQL query to print the first three characters of Country_name from the Country table
select left(COUNTRY_NAME,3) as FirstThreeChars from PERSONS;

#(2). Write an SQL query to concatenate first name and last name from Persons table.
select concat(F_NAME,' ',L_NAME) as FullName from PERSONS;

#(3) Write an SQL query to count the number of unique country names from Persons table
select count(distinct COUNTRY_NAME) as COUNTRY_count from PERSONS;

#(4). Write a query to print the maximum population from the Country table
select max(POPULATION) as MAXPOPULATION from COUNTRY;

 #(5). Write a query to print the minimum population from Persons table
select min(POPULATION) as MINPOPULATION from PERSONS;

 #(6). Insert 2 new rows to the Persons table making the Lname NULL.Then write another query to count Lname from Persons table
INSERT INTO PERSONS (PERSON_ID,F_NAME,L_NAME,POPULATION,RATING,COUNTRY_ID,COUNTRY_NAME) VALUES
 (11, 'Ferbin', null, 600000, 3.2, 11,'Africa'),
(12, 'Mccalum', null, 120000, 4.0, 12,null);


#(7). Write a query to find the number of rows in the Persons table
select count(*) as TotalRows from PERSONS;

# (8). Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT) 
select POPULATION from COUNTRY limit 3;

#(9). Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT)
select * from COUNTRY order by rand() limit 3;




 #(10). List all persons ordered by their rating in descending order
select * from PERSONS order by rating desc;

#(11). Find the total population for each country in the Persons table
SELECT COUNTRY_NAME, SUM(POPULATION) AS TOTAL_POPULATION FROM PERSONS GROUP BY COUNTRY_NAME;

#(12). Find countries in the Persons table with a total population greater than 50,000
select COUNTRY_NAME from PERSONS where POPULATION>50000;


#(13). List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.
select COUNTRY_NAME, count(*) as TOTAL_PERSONS , avg(Rating) as Average_Rating from PERSONS group by COUNTRY_NAME having count(*)>2


order by Average_Rating asc;



