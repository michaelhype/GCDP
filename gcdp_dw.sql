alter table person.[address] drop constraint fk_person_address_person_person_personId;
go

drop table person.person
go

create table person.person
(
	personId int not null identity(1,1),
	firstName varchar(32) not null,
	lastName varchar(64) not null,
	gender char(1) null,
	maritalStatus varchar(16) null,
	birthDate date null,
	constraint pk_person_person_personId primary key clustered (personId)
)
;
go

/*
notes in here
*/
--single line
drop table person.[address]
go

create table person.[address]
(
	personId int not null,
	addressName varchar(32),
	address1 varchar(128) not null,
	address2 varchar(128) null,
	city varchar(64) not null,
	[state] char(2) not null,
	[zip] varchar(16) not null,
	notes varchar(256) null,
	constraint pk_person_address_personId_addressName primary key clustered (personId, addressName)
)
;
ALTER TABLE person.[address] ADD CONSTRAINT fk_person_address_person_person_personId FOREIGN KEY (personId) REFERENCES person.person(personId);
go

insert into person.person(firstName, lastName, gender, maritalStatus, birthDate) values('Paul', 'Graeve', 'M', 'S', '1982-02-15');
insert into person.person(firstName, lastName, gender, maritalStatus, birthDate) values('Luke', 'Mueller', 'M', 'S', '2002-02-15');
select * from person.person;
insert into person.[address](personId, addressName, address1, address2, city, [state], [zip]) values(1, 'Home', 'Addresss line 1', null, 'Vestavia', 'AL', '35226');
select * from person.[address]

delete from person.person where personId = 2;

drop table person.flag;
create table person.flag
(
	flagId int not null identity(1,1),
	flagName varchar(64) not null,
	category varchar(64) not null,
	constraint pk_person_flag_flagId primary key clustered (flagId)
)
;

drop table person.link_personFlag;
create table person.link_personFlag
(
	personId int not null,
	flagId int not null,
	dateStamp datetime2 not null,
	notes varchar(256) null,
	constraint pk_person_link_person_flag_personId_flagId_dateStamp primary key clustered (personId, flagId, dateStamp)
)
;

drop table church.campus;
create table church.campus
(
	campusId int not null identity(1,1),
	[name] varchar(64) not null,
	pastor varchar(64) not null,
	launchDate date not null,
	address1 varchar(128) not null,
	address2 varchar(128) not null,
	city varchar(64) not null,
	[zip] varchar(16) not null,
	[mainPhone] varchar(16) not null,
	constraint pk_church_campus_campusId primary key clustered (campusId)
)
;

drop table church.team;
create table church.team
(
	teamId int not null identity(1,1),
	[name] varchar(64) not null,
)
;

drop table church.link_campusTeam;
create table church.link_campusTeam
(
	campusId int not null,
	teamId int not null,
	leaderId int not null,
	constraint pk_church_link_campusteam_campusId_teamId primary key clustered (campusId, teamId)
)
;

--create table church.growthTrack

--create table church.smallGroup

--create table church.[event]



