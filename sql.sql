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