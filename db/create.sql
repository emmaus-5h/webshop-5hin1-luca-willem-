--
-- create tables
--


CREATE TABLE categories (
  id INTEGER PRIMARY KEY autoincrement,
  broek TEXT,
  shirt TEXT,
  trui TEXT,
  sokken TEXT,
  schoenen TEXT
);
CREATE TABLE kleur ( 
  id INTEGER PRIMARY KEY autoincrement,
  rood,
  groen,
  blauw,
  geel,
  zwart,
  );
CREATE table product(
  id INTEGER PRIMARY KEY autoincrement,
  name 
  description 
  price
  code 
);
CREATE table merk 
)



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('mooieschoen', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5);
insert into products (name, description, code, price) values ('lelekijkschoen', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into products (name, description, code, price) values ('tomaat, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('komkommer, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('kip, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('vis', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

