create table person (
id integer primary key autoincrement,
  name varchar(200),
  age integer,
  height_cm integer,
  city varchar(30),
  favorite_color varchar(30)
)

insert into person (name, age, height_cm, city, favorite_color)
values('Eric', 29, 180, 'Dallas', 'Blue'),
('Don Vito', 66, 174, 'Philadelphia', 'Black'),
('Bam', 41, 177, 'Tokyo', 'Black'),
('Phil', 59, 174, 'Philadelphia', 'White'),
('April', 58, 166, 'Sydney', 'Purple')

select name, height_cm from person
order by height_cm desc;

select name, height_cm from person
order by height_cm asc;

select name, age from person
order by age desc;

select name, age from person
where age > 20;

select name, age from person
where age = 18;

select name, age from person
where age < 20 
or age > 30;

select name, age from person
where age != 27;

select name, favorite_color from person
where favorite_color != 'Red';

select name, favorite_color from person
where favorite_color != 'Red'
and favorite_color != 'Blue';

select name, favorite_color from person
where favorite_color = 'Orange'
or favorite_color = 'Green';

select name, favorite_color from person
where favorite_color in ('Orange', 'Green', 'Blue');

select name, favorite_color from person
where favorite_color in ('Yellow', 'Purple');

/*TABLE NUMBER 2*/

create table orders (
personid integer primary key autoincrement,
  product_name varchar(200),
  product_price integer,
  quantity integer ); */

insert into orders (product_name, product_price, quantity)
values('Pec Dec', 209, 20934),
('Yoga Matt', 66, 1);

select * from orders;

select sum(quantity) from orders;

select sum(product_price * quantity) from orders;

select sum(product_price * quantity) from orders
where personid = 2;

/*TABLE NUMBER 3*/

insert into Artist (Name)
values('Milky Chance'),
('Zac Brown'),
('Isaac Gustaffson');

select * from Artist order by name desc limit 10;

select * from Artist order by name asc limit 5;

select * from Artist where name like 'Black%';

select * from Artist where name like '%Black%';

/* TABLE EMPLOYEE NUMBER 4*/

select FirstName, LastName from Employee where
city = 'Calgary';

select FirstName, LastName, max(BirthDate) from Employee;

select FirstName, LastName, min(BirthDate) from Employee;

select * from Employee 
where ReportsTo = 2;

select count(*) from Employee
where City = 'Lethbridge'; 

/* TABLE INVOICE */

select count(*) from Invoice
where BillingCountry = "USA";

select max(Total) from Invoice;

select min(Total) from Invoice;

select * from Invoice
where Total > 5;

select count(*) from Invoice
where BillingState in('CA', 'TX', 'AZ');

select avg(Total) from Invoice;

select sum(Total) from Invoice;

 