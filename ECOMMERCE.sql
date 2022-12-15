CREATE TABLE User_type(
	user_type_id int NOT NULL primary key,
	name varchar NOT NULL

 )
CREATE TABLE Vendors(
	vendor_id int NOT NULL primary key,
	name varchar NOT NULL,
	email varchar NOT NULL,
	password varchar NOT NULL,
	location varchar NOT NULL

)
CREATE TABLE Category(
	category_id int NOT NULL primary key,
	name varchar

)
CREATE TABLE products(
	product_id int NOT NULL primary key,
	name varchar NOT NULL,
	price int NOT NULL,
	image varchar NOT NULL,
	description varchar NOT NULL,
	category_id int NOT NULL,
	foreign key(category_id) references Category(category_id),
	user_type_id int NOT NULL,
	foreign key(user_type_id) references User_type(user_type_id)
)
CREATE TABLE Orders(
	order_id int NOT NULL primary key,
	quantity int NOT NULL,
	total_price int NOT NULL,
	product_id int NOT NULL,
	foreign key(product_id) references product(product_id)
)
CREATE TABLE Users(
	user_id int NOT NULL primary key,
	user_name varchar NOT NULL,
	email varchar NOT NULL,
	phone int NOT NULL,
	password varchar NOT NULL,
	image varchar NOT NULL,
	user_type_id int NOT NULL,
	foreign key(user_type_id) references User_type(user_type_id)
)
-- DELETE FROM product
INSERT INTO User_type("user_type_id","name")
VALUES('1','clients'),
('2','vendors'),
('3','customers'),
('4','delivery_men');
INSERT INTO Category("category_id","name")
VALUES('10','fruits'),
('20','meats'),
('30','snacks'),
('40','cakes');
INSERT INTO Vendors("vendor_id","name","email","password","location")
VALUES('120','peruth kyt','pp@gmail.com','wwre','Bukoto'),
('121','promise magezi','prom@gmail.com','gold','Mulimira'),
('122','Ason tumu','tumu@gmail.com','ason','Gayaza'),
('123','Vivian kk','kk@gmail.com','vian','kisasi'),
('125','Robert Nankunda','robs@gmail.com','rrob','Masaka');
INSERT INTO products("product_id","name","price","image","description",
					 "category_id")
VALUES('1','mango','2000','img1','so Tasty','10'),
('2','orange','2500','img2','Sweetest','10',),
('3','beef','30000','img3','Best beef','20'),
('4','chicken','45000','img4','Your health matters','20'),
('5','crichips','3500','img10','best','30'),
('6','birthday_cakes','300000','bd','always there','40'),
('7','wedding_cakes','1000000','wd','marriage time','40');
INSERT INTO Orders("order_id","quantity","total_price","product_id")
VALUES('1','20','30000','1'),
('2','2','5000','2'),
('7','3','600000','6'),
('10','5','255000','4');
INSERT INTO Users("user_id","user_name","email","phone","password",
				  "image","user_type_id")
VALUES('201','Kasozi Mark','mark@gmail.com','765001','mark','img80','1'),
('202','John Micheal','mic@gmail.com','765231','mic','img81','2'),
('203','Kasoonyu jj','jj@gmail.com','777001','jjk','img79','3'),
('204','Peruth Ashaba','peru@gmail.com','765023','peru','img85','4');
-- Make orders for a few products.
SELECT*FROM Orders;
-- Select all products posted by the client(admin)
SELECT*FROM product;
-- Select all users from the system
SELECT*FROM Users;
-- Select all users with a user-type of vendor(seller)
SELECT*FROM Users
WHERE user_type_id='2';
-- Select all users with a user-type of admin and buyer
SELECT*FROM Users
WHERE user_type_id='1'OR user_type_id='3';
