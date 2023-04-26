1.  \sql
    \connect root@localhost:

2.  CREATE DATABASE shop;

    CREATE TABLE products (id int not null auto_increment, product varchar(128), price decimal(4,0), rating decimal(3,2), category varchar(16), brand varchar(16), primary key (id));
    insert into products (product, price, rating, category, brand) values ('iPhone 9', '549', '4.69', 'smartphones', 'Apple');
    insert into products (product, price, rating, category, brand) values ('iPhone X', '899', '4.44', 'smartphones', 'Apple');
    insert into products (product, price, rating, category, brand) values ('Samsung Universe 9', '1249', '4.09', 'smartphones', 'Samsung');
    insert into products (product, price, rating, category, brand) values ('OPPO F19', '280', '4.3', 'smartphones', 'OPPO');
    insert into products (product, price, rating, category, brand) values ('Huawei', '499', '4.09', 'smartphones', 'Huawei');

    update products;
    set product = "Huawei P30";
    where id = 5;

    insert into products (product, price, rating, category, brand) values ('MacBook Pro', '1149', '4.57', 'laptops', 'Apple');
    insert into products (product, price, rating, category, brand) values ('Samsung Galaxy Book', '1499', '4.25', 'laptops', 'Samsung');
    insert into products (product, price, rating, category, brand) values ('Microsoft Surface Laptop 4', '1499', '4.43', 'laptops', 'Microsoft Surface');
    insert into products (product, price, rating, category, brand) values ('Infinix INBOOK', '1099', '4.54', 'laptops', 'Infinix');
    insert into products (product, price, rating, category, brand) values ('HP Pavilion 15-DK1056WM', '1099', '4.43', 'laptops', 'HP Pavilion');

    alter table products modify column brand varchar(32);
    insert into products (product, price, rating, category, brand) values ('Microsoft Surface Laptop 4', '1499', '4.43', 'laptops', 'Microsoft Surface');

    select * from products;

3.1 select product, price from products where brand = "Apple";
3.2 select product from products where price < 1000;
3.3 select product from products where price between 500 and 1500;
3.4 select product, price, rating from products where brand in ("Apple", "Samsung", "Huawei");
3.5 select product, category from products where product like "Samsung%";