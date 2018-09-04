create database uri2737;
use uri2737;
 
create table advogados (
	register int primary key,
	nome varchar(20),
	customers_number int
);

insert into advogados (register, nome, customers_number) values
(1648, "Marty M. Harrison", 5),
(2427, "Jonathan J. Blevins", 15),
(3365, "Chelsey D. Sanders", 20),
(4153, "Dorothy W. Ford", 16),
(5525, "Penny J. Cormier", 6);

# nome do advogado que têm mais clientes, o nome do advogado que tem menos clientes e a média de clientes entre todos os advogados.

select nome, customers_number from advogados where customers_number = (select max(customers_number) from advogados)
union all
select nome, customers_number from advogados where customers_number = (select min(customers_number) from advogados)
union all
select 'Average', round(avg(customers_number), 0) from advogados;

select name, customers_number from lawyers where customers_number = (select max(customers_number) from lawyers)
union all
select name, customers_number from lawyers where customers_number = (select min(customers_number) from lawyers)
union all
select 'Average', round(avg(customers_number), 0) from lawyers;


