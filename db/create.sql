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



insert into products (name, description, code, price, categories_id, merk_id) values ('trui', 'warme kersttrui voor de koude winterdagen.', '816905633-0', 180.00,3 ,3);
--1 is dan de categorie = katoen en 2 is merk = adidas
insert into products (name, description, code, price, categories_id, merk_id) values ('schoenen', 'fijne schoenen voor de lange wandeldagen.', '077030122-3', 220.00,1 ,1);
insert into products (name, description, code, price, categories_id, merk_id) values ('broek','baggy broek voor het compleet maken van jouw winterfit.', '445924201-X', 60.00,5,4);
insert into products (name, description, code, price, categories_id, merk_id) values ('jas', 'beste pufferjas voor als je het koud hebt in dit vreselijke land', '693155505-7', 150.00,2,5);
insert into products (name, description, code, price, categories_id, merk_id) values ('Tas', 'beste tas voor het nieuwe schooljaar, hiermee ben jij degene die opvalt', '686928463-6', 90.00,4,2);
insert into products (name, description, code, price, categories_id, merk_id) values ('T-Shirt', 'heerlijk shirtje om onder je nieuw gekochte trui te dragen', '492662523-7', 50.00,4,4);

insert into merk (naam) values ('nike');
insert into merk (naam) values ('adidas');
insert into merk (naam) values ('stone island');
insert into merk (naam) values ('zara');
insert into merk (naam) values ('lyle en scott');

insert into categories (soortkleding) values ('katoen');
insert into categories (soortkleding) values ('wol');
insert into categories (soortkleding) values ('polyester');
insert into categories (soortkleding) values ('linnen');
insert into categories (soortkleding) values ('zijde');

insert into stof_kleding (wasvoorschrift, stof) values ('warm wassen in wasmachine', 'katoen');
insert into stof_kleding (wasvoorschrift, stof) values ('met de hand wassen in warm water', 'wol');
insert into stof_kleding (wasvoorschrift, stof) values ('koud wassen in wasmachine', 'polyester');
insert into stof_kleding (wasvoorschrift, stof) values ('met de hand wassen in warm water', 'linnen');
insert into stof_kleding (wasvoorschrift, stof) values ('koud wassen in wasmachine', 'zijde');

insert into kleur (kleur_naam) values ('blauw');1
insert into kleur (kleur_naam) values ('lichtblauw');2
  insert into kleur (kleur_naam) values ('donkerblauw');3
  insert into kleur (kleur_naam) values ('rood');4
  insert into kleur (kleur_naam) values ('donkergroen');5
  insert into kleur (kleur_naam) values ('groen');6
  insert into kleur (kleur_naam) values ('zwart');7
  insert into kleur (kleur_naam) values ('wit');8
  insert into kleur (kleur_naam) values ('geel');9
  insert into kleur (kleur_naam) values ('blauw');--nog kijken
  insert into kleur (kleur_naam) values ('blauw');--nog kijken
  insert into kleur (kleur_naam) values ('blauw');--nog kijken
  insert into kleur (kleur_naam) values ('blauw');--nog kijken

  
insert into product_kleur (product_id, kleur_id) values (1, 3 );--eerste cijfer is product tweede is kleur
insert into product_kleur (product_id, kleur_id) values (1, 4 );
insert into product_kleur (product_id, kleur_id) values (1, 6 );
insert into product_kleur (product_id, kleur_id) values (1, 8 );
insert into product_kleur (product_id, kleur_id) values (1, 9 );
insert into product_kleur (product_id, kleur_id) values (2, 2 );
insert into product_kleur (product_id, kleur_id) values (2, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );
insert into product_kleur (product_id, kleur_id) values (1, 2 );

