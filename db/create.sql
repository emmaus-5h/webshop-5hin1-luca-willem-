--
-- create tables
--

CREATE table product (
  id INTEGER PRIMARY KEY autoincrement,
  name TEXT,
  description TEXT,
  price numeric,
  code numeric,
  stof_ID integer,
  merk_ID integer,
  maat_ID integer,
  categories_ID integer
);

CREATE TABLE kleur ( 
  id INTEGER PRIMARY KEY autoincrement,
  kleur_naam TEXT 
  );

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



-- deze doen we nog niet
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



insert into product (name, description, code, price, categories_id, merk_id) values ('trui', 'warme trui voor de koude winterdagen.', '816905633-0', 10.5,1 ,2);
--1 is dan de categorie = katoen en 2 is merk = adidas
insert into product (name, description, code, price) values ('schoenen', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into product (name, description, code, price) values ('tomaat, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into product (name, description, code, price) values ('komkommer, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into product (name, description, code, price) values ('kip, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into product (name, description, code, price) values ('vis', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

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


--insert into  () values ();
--insert into  () values ();
--insert into  () values ();
--insert into  () values ();
--insert into  () values ();
--insert into  () values ();






insert into stof_kleding (wasvoorschrift, stof) values ('warm wassen in wasmachine', 'katoen');
insert into stof_kleding (wasvoorschrift, stof) values ('met de hand wassen in warm water', 'wol');
insert into stof_kleding (wasvoorschrift, stof) values ('koud wassen in wasmachine', 'polyester');
insert into stof_kleding (wasvoorschrift, stof) values ('met de hand wassen in warm water', 'linnen');
insert into stof_kleding (wasvoorschrift, stof) values ('koud wassen in wasmachine', 'zijde');

insert into kleur (kleur_naam) values ('blauw');
insert into kleur (kleur_naam) values ('lichtblauw');
  insert into kleur (kleur_naam) values ('donkerblauw');
  insert into kleur (kleur_naam) values ('rood');
  insert into kleur (kleur_naam) values ('donkergroen');
  insert into kleur (kleur_naam) values ('groen');
  insert into kleur (kleur_naam) values ('zwart');
  insert into kleur (kleur_naam) values ('wit');
  insert into kleur (kleur_naam) values ('blauw');--nog kijken
  insert into kleur (kleur_naam) values ('blauw');--nog kijken
  insert into kleur (kleur_naam) values ('blauw');--nog kijken
  insert into kleur (kleur_naam) values ('blauw');--nog kijken

  
insert into product_kleur (product_id, , kleur_id) values (1, 1 );--eerste cijfer is product tweede is kleur
insert into product_kleur (product id, , kleur id) values (1, 3 );
insert into product_kleur (product id, , kleur id) values (2, 1 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );
insert into product_kleur (product id, , kleur id) values (1, 2 );