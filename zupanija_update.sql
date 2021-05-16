drop database if exists zupanija1;

create database zupanija1;
use zupanija1;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan int not null
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int not null,
naziv varchar(50) not null
);

create table mjesto(
sifra int not null primary key auto_increment,
opcina int not null,
naziv varchar(50) not null
);

create table zupan(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);


alter table opcina add constraint foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table zupanija add constraint foreign key (zupan) references zupan(sifra);

insert into zupan(ime,prezime) values ('ante','sisljagic');
insert into zupan(ime,prezime) values ('ivo','smranader');
insert into zupan(ime,prezime) values ('pero','matic');

insert into zupanija(naziv,zupan) values ('osjecko_baranjska','1');
insert into zupanija(naziv,zupan) values ('vukovarsko srijemska','2');
insert into zupanija(naziv,zupan) values ('brodsko posavska','3');

insert into opcina(zupanija,naziv) values ('1','osijek');
insert into opcina(zupanija,naziv) values ('1','valpovo');
insert into opcina(zupanija,naziv) values ('2','zupanja');
insert into opcina(zupanija,naziv) values ('2','vukovar');
insert into opcina(zupanija,naziv) values ('3','slavonski brod');
insert into opcina(zupanija,naziv) values ('3','nova gradiska');

insert into mjesto(opcina,naziv) values ('1','visnjevac');
insert into mjesto(opcina,naziv) values ('1','josipovac');
insert into mjesto(opcina,naziv) values ('2','belisce');
insert into mjesto(opcina,naziv) values ('2','veliskovci');
insert into mjesto(opcina,naziv) values ('3','stitar');
insert into mjesto(opcina,naziv) values ('3','gradiste');
insert into mjesto(opcina,naziv) values ('4','sarengrad');
insert into mjesto(opcina,naziv) values ('4','ilok');
insert into mjesto(opcina,naziv) values ('5','crno selo');
insert into mjesto(opcina,naziv) values ('5','sibinj');
insert into mjesto(opcina,naziv) values ('6','cernik');
insert into mjesto(opcina,naziv) values ('6','dragalic');

update mjesto set naziv='bijelo selo' where sifra=9;
update mjesto set naziv='cijernik' where sifra=11;
update mjesto set naziv='zastitar' where sifra=5;
update mjesto set naziv='bijelisce' where sifra=3;
update mjesto set naziv='predragalic' where sifra=12;

delete from mjesto where sifra>12;
delete from mjesto where sifra>11;
delete from mjesto where sifra>10;
delete from mjesto where sifra>9;
delete from mjesto where sifra>8;

delete from opcina where sifra>6;
delete from opcina where sifra>5;
delete from opcina where sifra>4;

select *from mjesto;