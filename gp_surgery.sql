drop database if exists gp_surgery;
create database gp_surgery;
use gp_surgery;
create table patient
(
	id	INT AUTO_INCREMENT,
	Firstname  	varchar(30),
	Surname    	varchar(30),
	DateOfBirth 	datetime,
	HealthPlan  	varchar(30),
	primary key(id)
);
create table doctor
(
	id	INT auto_increment,
	Firstname	varchar(30),
	Surname		varchar(30),
	Specialism	varchar(30),
	Hoursperweek	integer,
	primary key(id)
);
create table visit
(
	id	INT auto_increment,
	visit_date	date,
	visit_time	time,
	doctor_id	int,
	patient_id	int,
	cost		decimal(18,3),
	overtime	bit,
	primary key(id),
	foreign key(doctor_id) references doctor(id),
	foreign key(patient_id) references patient(id)
);
Insert into patient(Firstname,Surname,DateOfBirth,HealthPlan) values('John','Smith','1972-10-30','Basic');
Insert into patient(Firstname,Surname,DateOfBirth,HealthPlan) values('Matt','Jones','1960-02-20','Comprehensive');
Insert into patient(Firstname,Surname,DateOfBirth,HealthPlan) values('Mary','O''Neill','1975-09-25','Basic');
Insert into patient(Firstname,Surname,DateOfBirth,HealthPlan) values('Peter','O''Shea','1980-07-31','Comprehensive');
Insert into patient(Firstname,Surname,DateOfBirth,HealthPlan) values('Jane','Ryan','1975-02-12','Comprehensive');

Insert into doctor(Firstname,Surname,Specialism,HoursPerWeek) values('Fred','Jones','Cardiology',40);
Insert into doctor(Firstname,Surname,Specialism,HoursPerWeek) values('Patrick','Smith','Neurology',50);
Insert into doctor(Firstname,Surname,Specialism,HoursPerWeek) values('Mary','McFadden','Endocrinology',37);
Insert into doctor(Firstname,Surname,Specialism,HoursPerWeek) values('Claire','Long','Neurology',50);
Insert into doctor(Firstname,Surname,Specialism,HoursPerWeek) values('Joan','McDonnell','Cardiology',40);

Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-02-20','15:00','3','1',40);
Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-02-20','16:00','3','2',60);
Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-02-21','10:00','5','4',40);
Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-02-21','11:00','5','3',45);
Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-02-25','11:00','2','5',100);
Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-02-26','14:00','5','1',35);
Insert into visit(visit_date,visit_time,doctor_id,patient_id,cost) values('2004-03-01','14:00','1','2',50);
