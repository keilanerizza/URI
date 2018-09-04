create database uri2740;
use uri2740;
 
create table league (
	position int primary key,	
	team varchar(30)
);

insert into league (position, team) values
(1, "The Quack Bats"),	
(2, "The Responsible Hornets"),	
(3, "The Bawdy Dolphins"),	
(4, "The Abstracted Sharks"),	
(5, "The Nervous Zebras"),	
(6, "The Oafish Owls"),	
(7, "The Unequaled Bison"),	
(8, "The Keen Kangaroos"),	
(9, "The Left Nightingales"),	
(10, "The Terrific Elks"),	
(11, "The Lumpy Frogs"),	
(12, "The Swift Buffalo"),	
(13, "The Big Chargers"),	
(14, "The Rough Robins"),	
(15, "The Silver Crocs");

# Selecione os três primeiros colocados da lista com a frase inicial Podium: e também, os dois últimos times que serão rebaixados para série B com a frase inicial Demoted:

(select concat('Podium: ', team) as nome from league limit 3)
union all
(select concat('Demoted: ', team) as nome from league order by position desc limit 1,1) 
union all
(Select	concat('Demoted: ', team) as name from league order	by position	desc limit 1 offset	0);