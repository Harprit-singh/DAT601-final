USE MASTER 
GO
DROP DATABASE IF EXISTS newDB;
GO
CREATE DATABASE newDB;
GO
USE newDB;
GO

    

--Creating ddl--

drop procedure IF exists makeData;
go
Create procedure makeData
AS
Begin


DROP TABLE IF EXISTS tblDATASCOOPDRONE;
Create table tblDATASCOOPDRONE (
 Datadroneid int Not null primary key,
 organicspectral int,
 Longtitude int,
 Location varchar(20),
 Lightstrength int,
 tempertaure int,
 humidity int,
 Latitude int
 );

DROP TABLE IF EXISTS tblFlightstream;
 Create table tblFlightstream(
 Flightstreamid int NOT NULL primary key,
 Addres varchar,
 Phoneno int
 );


 Drop Table IF exists tblWebsite;
 create table tblWebsite(
 Websiteid int NOT NULL Primary key,
 Websitedetails varchar
 );

 Drop Table IF exists tblvideostream;
 create table tblvideostream(
 videostreamid int NOT NULL Primary key,
 videostreamdetails varchar,
 videostreamquality int,
 videostreamtime time);

 drop table if exists tblZONE;
 Create table tblZone(
 ZONEID int NOT NULL primary key,
 Zonearea varchar );


 drop table if exists tblemployee;
 CREate  table tblemployee(
 Employeeid int not null primary key,
 );

 Drop table if exists tblDatascoopdata;
 Create table tblDatascoopdata(
 Datadronedataid int Not null primary key,
 organicspectral int,
 Lightstrength int,
 tempertaure int,
 humidity int);

Drop table if exists tblDatadronepart;
Create table tblDatadronepart(
Datadronepartid int IDENTITY(1,1) primary key,
Partsname varchar(20) NOT NULL,
Partssize int NOT NULL

);


DROP TABLE IF EXISTS tblMainteanceperson
Create table tblMainteanceperson(
Mainteancepersonid int IDENTITY(1,1) primary key,
Mainteancepersonfirstname varchar,
Mainteancepersonlastname varchar,
Employeeid int  NOT NULL FOREIGN KEY REFERENCES tblemployee( Employeeid)
);

DROP TABLE IF EXIsts tbladminexcetuive;
CREATE TABLE tbladminexcetuive(
adminexcetuiveid int IDENTITY(1,1) primary key,
adminexcetuivename varchar(20),
adminexcetuivereports varchar(10),
adminexcetuivephoneno varchar(20),
Employeeid int  NOT NULL FOREIGN KEY REFERENCES tblemployee( Employeeid)
);

DROP TABLE IF EXISTS tblSaleperson;
CREAte table tblSaleperson(
Salepersonid int IDENTITY(1,1) primary key,
Salepersonfirstname varchar(20),
Salepersonlastname varchar(20),
Salepersonreport varchar(20),
Salepersonphoneno varchar(20),
Employeeid int  NOT NULL FOREIGN KEY REFERENCES tblemployee( Employeeid)
);

DROP TABLE IF EXISTS tblOfficeStaffmember;
Create table tblOfficeStaffmember(
staffmemberid int IDENTITY(1,1) primary key,
staffmemberfirstname varchar(20),
staffmemberlastname   varchar(20),
staffmemberemailid varchar(255),
staffmemberphoneno varchar(20),
staffmemberaddress varchar(50),
staffmemeberjobtitle varchar(30),
Employeeid int  NOT NULL FOREIGN KEY REFERENCES tblemployee( Employeeid)
);

DROP TABLE IF EXISTS tblcontract;
CREATE table tblcontract(
contractID int not null primary key,
contractdetails varchar,
contracttype varchar,
);


DROP TABLE IF EXISTs tblsubscriber;
CREATE table tblsubscriber(
subscriberid int not null primary key,
subscriberusername varchar,
subscriberpassword varchar,
subcriberemailaddress varchar,
);


DROP TABLE IF EXIsTS tblstandard;
CREATE TABLE tblstandard(
standardid int not  null primary key,
standarddetails varchar,
standardfees money, 
standardname varchar,
);



DROP TABLE IF EXIsTS tblsuperplatinum;
CREATE TABLE tblsuperplatinum(
superplatinum int not  null primary key,
superplatinumdetails varchar,
superplatinumfees money, 
superplatinumname varchar,
);


DROP TABLE IF EXIsTS tblplatinum;
CREATE TABLE tblplatinum(
platinumdid int not  null primary key,
platinumdetails varchar,
platinumfees money, 
platinumname varchar,
);


DROP TABLE IF EXIsTS tblgold;
CREATE TABLE tblgold(
goldid int not  null primary key,
golddetails varchar,
goldfees money, 
goldname varchar,
);






DROP TABLE IF EXISTS tblsupplier;
CREATE TABLE tblsupplier(
SupplierID int IDentity (1,1) primary key,
Suppliername varchar(20),
Supplierphoneno varchar(20),
supplieremailaddress varchar(255),
);


DROP TABLE  IF EXISTS tblsubscription;
CREATE TABLE tblsubscription(
subscriptionid int not null primary key,
Subscriptiontype varchar,
Subscriptiondetails varchar,
subscriptionfees money,
);


End;
GO

EXECUte makeData;
GO



 ---- Inserting into tables


 use newDB
 go
drop procedure if exists INFOTABLEs;
GO
create procedure INFOTABLEs
as
begin
SET NOCOUNT ON

insert into tblDatadronepart (Partsname,Partssize)
VALUES
('PART1', '23'),
('PART2', '22'),
('PART3', '21'),
('PART4', '223'),
('PART5', '213'),
('PART6', '232'),
('PART7', '253'),
('PART8', '263'),
('PART9', '243'),
('PART10', '293'),
('PART11', '2223'),
('PART12', '2113'),
('PART13', '253'),
('PART14', '263'),
('PART15', '293'),
('PART16', '23'),
('PART16', '3'),
('PART17', '293'),
('PART18', '23'),
('PART19', '23'),
('PART20)', '23');

insert into tblSaleperson values 
('Carce', 'Blonden', 'okay', '8564634039'),
('Baird', 'Collingworth', 'okay', '2946041567'),
('Terese', 'Billanie','okay', '1067942757'),
('Cinda', 'Kuhnel', 'notgood', '2954502324'),
('Cinda', 'Kuhnel','notgood' , '2954502324'),
('Dorelle', 'Polak', 'notgood', '9939666330'),
('Mallory', 'Galland', 'notgood', '7992348565'), 
('Cordelia', 'Shanahan','notgood', '9336418914'),
('Suzanna', 'Birtle', 'notgood', '2103475628'),
('Dasha', 'Grunnell', 'notgood', '1312527577'),
('Terri', 'Nuccitelli', 'okay', '6296711906');



insert into tblsupplier  values
('Tabatha', '221935634', 'tspencers0@digg.com'),
('Clarabelle', '818309417', 'cdesouza1@tinypic.com'),
('Ginger', '6445715732', 'gdudney2@japanpost.jp'),
('Rodina', '126831277', 'rhiscocks3@home.pl'),
 ('Sonnie', '149476715', 'sreavey4@github.com'),
 ('Frankie', '4078686275', 'fratcliffe5@mlb.com'),
('Keriann', '1491890527', 'ktadgell6@ehow.com'),
 ('Chanda', '7191093471', 'csteptoe7@t.co'),
('Gregorio', '7178590155', 'grathe8@msn.com'),
('Hal', '9027724771', 'hfibbens9@nps.gov'),
 ('Mayor', '1771194896', 'mweonda@51.la'),
 ('Amalle', '9038181701', 'abalstoneb@twitpic.com'),
 ('Neal', '2613717883', 'nallmenc@microsoft.com'),
 ('Clifford', '1115780407', 'cinettd@seattletimes.com'),
 ('Prudence', '75823275', 'plowdere@webnode.com'),
 ('Salmon', '930927781', 'sdellenbrookf@tmall.com'),
  ('Karyn', '7645315724', 'kwoolish@imgur.com'),
('Hendrika', '8245659122', 'hcancellori@smh.com.au'),
('Noelani', '2609476526', 'nseabournej@census.gov');


insert into tbladminexcetuive
Values
('Clemens', 'okay', '5008430148'),
 ('Roley', 'okay', '2169605651'),
 ('Georgianna', 'okay', '6891757353'),
  ('Ann', 'okay', '7717568774'),
  ('Armand', 'okay', '5145165094'),
  ('Henriette','notgood', '1068209234'),
  ('Gweneth', 'notgood', '5605153963'),
 ('Roberto', 'notgood', '9818487624'),
 ('Kurtis', 'notgood', '6716181210'),
  ('Boniface', 'notgood', '8466088991'),
 ('Barry', 'notgood', '1023529123'),
  ('Ivie', 'okay', '6295274899'),
  ('Arly', 'okay', '3179982965'),
  ('Roy', 'okay', '4113570357'),
 ('Arleyne', 'okay', '4734602059'),
  ('Vina', 'okay', '6762713312'),
 ('Nissie', 'okay', '9955983078'),
 ('Georgeanne', 'okay', '7111049050');




 insert into tblOfficeStaffmember 
values 
('Ade', 'Billson', 'abillson0@intel.com', '1471460815', '52Northwestern Drive', 'Assistant'),
('Muriel', 'Canwell', 'mcanwell1@addthis.com', '1565632221', '4Fallview Center', 'SoftwareTester'),
 ('Trish', 'Borrill', 'tborrill3@cnn.com', '1732036655', '14North Way', 'Paralegal'),
 ('Gerladina', 'Claussen', 'gclaussen4@cafepress.com', '8951399358', '40740Porter Hill', 'Editor'),
 ('Ruthanne', 'Medland', 'rmedland5@stanford.edu', '4184209193', '2569Bartillon Road', ' II'),
  ('Liza', 'Bonicelli', 'lbonicelli6@dailymail.co.uk', '4966817846', '4958Chinook Pass', 'FinancialAdvisor'),
 ('Rebbecca', 'Kun', 'rkun7@about.com', '2237350321', '4815haring Cross Hill', 'Structural AnalysisEngineer'),
('Meaghan', 'Verecker', 'mverecker8@disqus.com', '2627424861','817th Way', 'SafetyTechnicianI'),
 ('Selle', 'Dignam', 'sdignam9@skype.com', '2243432127', '887Hallows Road', 'SeniorEditor'),
('Hy', 'Leggott', 'hleggotta@kickstarter.com', '1888753878', '8arcyPlace', 'EngineerII'),
('Matthus', 'Aikenhead', 'maikenheadd@nymag.com', '8454998569', '367Merchant Center', 'Associatemanager'),
('Brandon', 'Herety', 'bheretye@sfgate.com', '3607511567', '9893Delladonna Alley', 'volunter '),
 ('Regina', 'Filtness', 'rfiltnessg@flavors.me', '6658283078', '723Stoughton Road', 'helper'),
('Oliy', 'Laible', 'olaibleh@oakley.com', '8261525549', '76745Fisk Road', 'GIS Technical Architect'),
  ('Godart', 'Sugden', 'gsugdeni@sitemeter.com', '7202887134', '6329Lakeland Junction', 'StaffAccountantIII'),
 ('Yovonnda', 'Joyce', 'yjoycej@desdev.cn', '6068887980', '5958Barnett Drive', 'Operator');







end;
go
execUTE INFOTABLEs;
go
select * From tblOfficeStaffmember