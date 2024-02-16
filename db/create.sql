--
-- create tables
--

CREATE table products (
  id INTEGER PRIMARY KEY autoincrement,
  name TEXT,
  description TEXT,
  price numeric,
  code numeric,
  stof_ID integer,
  merk_ID integer,
  maat_ID integer,
  categories_ID integer,
  soort_ID integer
);

CREATE TABLE kleur ( 
  id INTEGER PRIMARY KEY autoincrement,
  kleur_naam TEXT 
  );
--n op m

CREATE TABLE product_kleur (
  id INTEGER PRIMARY KEY autoincrement,
  kleur_id INTEGER,
  product_id INTEGER
);
--n op m

CREATE TABLE categories (
  id INTEGER PRIMARY KEY autoincrement,
  soortkleding TEXT 
);
--1 op m

CREATE table merk (
  id INTEGER PRIMARY KEY autoincrement,
  naam TEXT
  );
  --1 op m

CREATE TABLE soort_product (
  id INTEGER PRIMARY KEY autoincrement,
  soort TEXT
);
--kan nog later


create table maat (
  id INTEGER PRIMARY KEY autoincrement,
  size TEXT 
  );
--doen we als laatste


CREATE table stof_kleding (
  id INTEGER PRIMARY KEY autoincrement,
  wasvoorschrift TEXT, 
  stof TEXT
);
--doen we als laatste







--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20


--/waardes in tabels gaan doen, producten zoeken en kiezen. en bijbehorende informatie/



insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Trui', 'warme kersttrui voor de koude winterdagen.', '816905633-0', 180.00,3 ,3,2);
--1 is dan de categorie = katoen en 2 is merk = adidas
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Trui', 'Mooie trui, lekker warm en perfect voor de feestdagen.', '816905633-1', 120.99,3,4,5);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Schoenen', 'Mooie lichtblauwe schoenen, perfect voor onder uw pak, maar ook uw dagelijkse kledei.', '077030122-4', 435.00,6 ,5, 10);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Schoenen', 'fijne schoenen voor de lange wandeldagen.', '077030122-3', 220.00,1 ,1, 8);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Broek','baggy broek voor het compleet maken van jouw winterfit.', '445924201-X', 60.00,5,4,2);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Broek','Skibroek, met deze mooie broek sta jij shinend op de piste.', '445924201-y', 60.00,1, 2,1);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Jas', 'beste pufferjas voor als je het koud hebt in dit vreselijke land', '693155505-9', 150.00,2,5,4);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('Jas', 'Mooie winterjas, lekker warm met een mooie bontkraag', '693155505-10', 150.00,2,4,5);
insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('T-Shirt', 'Mooi informatica shirt! Misschien krijg je wel bonuspunten van je docent', '693155505-7', 90.00,4,5,1);
  insert into products (name, description, code, price, categories_id, merk_id, maat_id) values ('T-Shirt', 'lekker shirtje om aan te doen om mensen in je omgeving te motiveren', '693155505-8', 90.00,5,1,3);
  



insert into categories (soortkleding) values ('katoen');
insert into categories (soortkleding) values ('wol');
insert into categories (soortkleding) values ('polyester');
insert into categories (soortkleding) values ('linnen');
insert into categories (soortkleding) values ('zijde');
insert into categories (soortkleding) values ('leren');

insert into merk (naam) values ('nike');
insert into merk (naam) values ('adidas');
insert into merk (naam) values ('stone island');
insert into merk (naam) values ('zara');
insert into merk (naam) values ('lyle en scott');

insert into maat (size) values ('XS');
insert into maat (size) values ('S');
insert into maat (size) values ('M');
insert into maat (size) values ('L');
insert into maat (size) values ('XL');
insert into maat (size) values ('36');
insert into maat (size) values ('37');
insert into maat (size) values ('38');
insert into maat (size) values ('39');
insert into maat (size) values ('40');
insert into maat (size) values ('41');
insert into maat (size) values ('42');
insert into maat (size) values ('43');


insert into kleur (kleur_naam) values ('blauw');
insert into kleur (kleur_naam) values ('lichtblauw');
  insert into kleur (kleur_naam) values ('donkerblauw');
  insert into kleur (kleur_naam) values ('rood');
  insert into kleur (kleur_naam) values ('donkergroen');
  insert into kleur (kleur_naam) values ('groen');
  insert into kleur (kleur_naam) values ('geel');
  insert into kleur (kleur_naam) values ('wit');
  insert into kleur (kleur_naam) values ('zwart');
  insert into kleur (kleur_naam) values ('grijs');
  insert into kleur (kleur_naam) values ('lichtgrijs');
  insert into kleur (kleur_naam) values ('bruin');
  insert into kleur (kleur_naam) values ('lichtgroen');
  insert into kleur (kleur_naam) values ('blauw');--nog kijken

  
insert into product_kleur (product_id, kleur_id) values (1, 3 );--eerste cijfer is product tweede is kleur
insert into product_kleur (product_id, kleur_id) values (1, 4 );
insert into product_kleur (product_id, kleur_id) values (1, 6 );
insert into product_kleur (product_id, kleur_id) values (1, 8 );
insert into product_kleur (product_id, kleur_id) values (1, 7 );
insert into product_kleur (product_id, kleur_id) values (2, 11 );
insert into product_kleur (product_id, kleur_id) values (2, 7 );
insert into product_kleur (product_id, kleur_id) values (2, 8 );
insert into product_kleur (product_id, kleur_id) values (3, 2 );
insert into product_kleur (product_id, kleur_id) values (3, 12 );
insert into product_kleur (product_id, kleur_id) values (3, 9 );
insert into product_kleur (product_id, kleur_id) values (3, 8 );
insert into product_kleur (product_id, kleur_id) values (4, 4 );
insert into product_kleur (product_id, kleur_id) values (4, 8 );
insert into product_kleur (product_id, kleur_id) values (4, 11 );
insert into product_kleur (product_id, kleur_id) values (5, 2 );
insert into product_kleur (product_id, kleur_id) values (6, 9 );
insert into product_kleur (product_id, kleur_id) values (6, 8 );
insert into product_kleur (product_id, kleur_id) values (7, 9 );
insert into product_kleur (product_id, kleur_id) values (8, 5 );
insert into product_kleur (product_id, kleur_id) values (8, 6 );
insert into product_kleur (product_id, kleur_id) values (9, 11 );
insert into product_kleur (product_id, kleur_id) values (9, 13 );
insert into product_kleur (product_id, kleur_id) values (9, 9 );
insert into product_kleur (product_id, kleur_id) values (10, 2 );
insert into product_kleur (product_id, kleur_id) values (10, 7 );
insert into product_kleur (product_id, kleur_id) values (10, 8 );
insert into product_kleur (product_id, kleur_id) values (10, 9 );
insert into product_kleur (product_id, kleur_id) values (10, 4 );
insert into product_kleur (product_id, kleur_id) values (10, 10 );



