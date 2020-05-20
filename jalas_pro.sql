-- we don't know how to generate root <with-no-name> (class Root) :(
create table configuration
(
	idconfiguration varchar(40) not null
		primary key,
	conf longtext collate utf8mb4_bin not null
)
charset=utf8;

create table establishment
(
	idestablishment varchar(40) not null
		primary key,
	name varchar(60) not null,
	email varchar(50) not null,
	password varchar(70) not null,
	phone varchar(13) default '+520000000000' not null,
	groupid varchar(15) not null,
	confirmationcode varchar(70) null,
	idconfiguration varchar(70) null
)
charset=utf8;

create table event
(
	idevent varchar(40) not null
		primary key,
	name varchar(100) not null,
	latitude float not null,
	longitude float not null,
	idconfiguration varchar(40) not null,
	idestablishment varchar(40) null
)
charset=utf8;

create table review
(
	idreview varchar(40) not null
		primary key,
	idestablishment varchar(40) not null,
	iduser varchar(40) not null,
	comment varchar(250) null,
	rating int not null,
	time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
)
charset=utf8mb4;

create table user
(
	iduser varchar(40) not null
		primary key,
	name varchar(50) not null,
	lastname varchar(50) not null,
	email varchar(50) not null,
	password varchar(70) not null,
	birthday varchar(20) not null,
	sex varchar(6) default 'OTHER' not null,
	phone varchar(13) default '+520000000000' not null,
	confirmationcode varchar(70) not null,
	idconfiguration varchar(70) null
)
charset=utf8;

