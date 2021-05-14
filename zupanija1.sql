drop database if exists zupanija1;

create database zupanija1;
use zupanija1;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan varchar(50) not null
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int not null,
naziv varchar(50) not null
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

insert into zupanija (sifra,naziv,zupan) values (null,'osjecko_baranjska','sisljagic');
insert into zupanija (sifra,naziv,zupan) values (null,'vukovarsko srijemska','smranader');
insert into zupanija (sifra,naziv,zupan) values (null,'brodsko posavska','matic');

insert into opcina (sifra,zupanija,naziv) values (null,'1','osijek');
insert into opcina (sifra,zupanija,naziv) values (null,'1','valpovo');
insert into opcina (sifra,zupanija,naziv) values (null,'2','zupanja');
insert into opcina (sifra,zupanija,naziv) values (null,'2','vukovar');
insert into opcina (sifra,zupanija,naziv) values (null,'3','slavonski brod');
insert into opcina (sifra,zupanija,naziv) values (null,'3','nova gradiska');

select *from opcina;


