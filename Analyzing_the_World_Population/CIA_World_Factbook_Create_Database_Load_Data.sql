
create database project;
use project;

CREATE TABLE CIA_World_Factbook (
	country VARCHAR(45) NOT NULL, 
	area DECIMAL(38, 0), 
	birth_rate DECIMAL(38, 2), 
	death_rate DECIMAL(38, 2), 
	infant_mortality_rate DECIMAL(38, 2), 
	internet_users DECIMAL(38, 0), 
	life_exp_at_birth DECIMAL(38, 2), 
	maternal_mortality_rate DECIMAL(38, 0), 
	net_migration_rate DECIMAL(38, 2), 
	population DECIMAL(38, 0), 
	population_growth_rate DECIMAL(38, 2)
);

load data local infile 'D:\CIA_World_Factbook.csv'
into table CIA_World_Factbook
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 rows;

select * from CIA_World_Factbook;
