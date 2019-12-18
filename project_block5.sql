CREATE DATABASE project_block5;

create table users(
	username varchar(255) not null PRIMARY KEY,
	LastName varchar(255) NOT NULL,
    FirstName varchar(255),
	password varchar(255),
)

create table company(
		id int IDENTITY(1,1) PRIMARY KEY, 
		name varchar(255) not null,
		address varchar(255) not null,
)

create table store(
		name varchar(255) not null  PRIMARY KEY,
		address varchar(255) not null,
)

create table products(
	id int IDENTITY(1,1) PRIMARY KEY, 
	productName varchar(255) not null,
	 quanlity int,
	 companyId int ,
	 storeName varchar(255) , 
	 FOREIGN KEY (companyId) REFERENCES company(id),
	 FOREIGN KEY (storeName) REFERENCES store(name)
)

