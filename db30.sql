CREATE DATABASE worldTest;
USE worldTest;

create table city(
	id int not null auto_increment,
	country_code varchar(2) not null,
	name varchar(60) not null,
	district varchar(60) not null,
	population int not null,
	primary key(id),
	foreign key(?) references country(?) on delete cascade
);

create table country(
	country_code varchar(2) not null,
	country_code2 varchar(2) not null,
	name varchar(60) not null,
	local_name varchar(60) not null unique,
	capital varchar(60) not null,
	region varchar(60) not null,
	continent varchar(60) not null,
	surface_area bigint not null,
	population int not null,
	life_expectancy int not null,
	gdp numeric(19,4) not null,
	gdp_old numeric(19,4) not null,
	independence_year int not null,
	goverment_form varchar(60) not null,
	head_of_state varchar(60) not null,
	primary key(iso_code),
	unique(local_name)
);

create table speaks(
	iso_code varchar(3) not null unique,
	languag varchar(60) not null,
	primary key(languag),
	unique(iso_code),
	foreign key(iso_code) references country(iso_code),
	foreign key(languag) references country_language(languag) on delete cascade
);

create table country_language(
	iso_code varchar(3) not null unique,
	languag varchar(60) not null,
	is_official boolean not null,
	percentage numeric(3,2) not null,
	primary key(languag),
	unique(iso_code)
);