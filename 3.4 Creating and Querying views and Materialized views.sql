--  Creating and Querying views and Materialized views. 
-- Creating View
create view myview as select rollno,name from st1; 

-- Display Views and Tables in your login
select * from tab;

-- Inserting a row in view
insert into myview values(506,'prathisha'); 

-- Display view
select * from myview;

-- Displaying Table
select * from st1;

-- Deleting a row in a view
delete from myview where rollno=506; 

-- Display view
select * from myview;

-- Displaying Table
select * from st1;

-- Change the Structure of the View
create or replace view myview as select * from st1; 

-- Creating Read only view
create view myview1 as select * from st1 with read only; 
