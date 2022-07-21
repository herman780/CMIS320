CREATE TABLE Academy_Award
(
AA_ID INTEGER,
Category CHAR(20) NOT NULL,
Year int NOT NULL,
Winner varchar(30) NOT NULL,
Nominee varchar(30) NOT NULL,
CONSTRAINT Academy_Award_pk PRIMARY KEY(AA_ID)
);

CREATE TABLE Academy_awardMovie
(
Movie_ID INTEGER,
AAM_ID INTEGER,
Academyaward_ID INTEGER,
CONSTRAINT Academy_awardMovie_pk PRIMARY KEY(Movie_ID)
);

CREATE TABLE Actors
(
Actor_ID int PRIMARY KEY,
First_Name varchar(40) NOT NULL,
Middle_Name varchar(40) NOT NULL,
Last_Name varchar(40) NOT NULL
);

CREATE TABLE Movies_of_Actors
(
MA_ID INTEGER,
Actor_ID INTEGER,
Movie_ID INTEGER,
CONSTRAINT Movies_of_Actors_pk PRIMARY KEY(MA_ID)
);

CREATE TABLE Charges_INFO
(
Charge_ID INTEGER,
Type char(20) NOT NULL UNIQUE,
Charge INT CHECK (Charge > 0),
CONSTRAINT Charges_INFO_pk PRIMARY KEY(Charge_ID)
);

CREATE TABLE Rental_Charges
(
Rental_ID INTEGER,
Charge_ID int,
ID INTEGER,
CONSTRAINT Rental_Charges_pk PRIMARY KEY(Rental_ID)
);

CREATE TABLE Customer
(
Customer_ID int,
First_Name varchar(40) NOT NULL,
Last_Name varchar(40) NOT NULL,
Address varchar(60) NOT NULL UNIQUE,
ZipCode varchar(12) NOT NULL,
Birth_Date varchar(30) NOT NULL,
Phone_Number varchar(25) NOT NULL,
CONSTRAINT Customer_pk PRIMARY KEY(Customer_ID)
);

CREATE TABLE Directors
(
Director_ID INTEGER,
First_Name varchar(40) NOT NULL,
Middle_Name varchar(40) NOT NULL,
Last_Name varchar(40) NOT NULL,
CONSTRAINT Directors_pk PRIMARY KEY(Director_ID)
);

CREATE TABLE Movies_of_Directors
(
DM_ID INTEGER,
Direct_ID INTEGER UNIQUE,
Movie_ID int,
CONSTRAINT Movies_of_Directors_pk PRIMARY KEY(DM_ID)
);

CREATE TABLE Distributors
(
Distributor_ID int,
Distributor_Name varchar(50) NOT NULL,
Ship_Quantity int NOT NULL,
CONSTRAINT Distributors_pk PRIMARY KEY(Distributor_ID)
);

CREATE TABLE Movie
(
ID int,
Distributor_ID INTEGER,
Mov_ID int UNIQUE,
Title varchar(125) NOT NULL,
Type char(25) NOT NULL,
Duration_Length int NOT NULL,
Rating char(8) NOT NULL,
CONSTRAINT Movie_pk PRIMARY KEY(ID)
);

CREATE TABLE Rentals
(
Rental_ID INTEGER,
Customer_ID INTEGER,
Rent_Date DATE,
Return_Date DATE,
Rent_time_and_location varchar(90),
Returned_time_and_location varchar(90),
Charges DECIMAL(2),
Taxes FLOAT(2),
CONSTRAINT Rentals_pk PRIMARY KEY(Customer_ID)
);

ALTER TABLE Movies_of_Actors
    ADD FOREIGN KEY (Movie_ID)
    REFERENCES Academy_awardMovie (Movie_ID)
;

ALTER TABLE Movies_of_Actors
    ADD FOREIGN KEY (Actor_ID)
    REFERENCES Actors (Actor_ID)
;

ALTER TABLE Rental_Charges
    ADD FOREIGN KEY (Charge_ID)
    REFERENCES Charges_INFO (Charge_ID)
;

ALTER TABLE Movies_of_Directors
    ADD FOREIGN KEY (Movie_ID)
    REFERENCES Academy_awardMovie (Movie_ID)
;

ALTER TABLE Movie
    ADD FOREIGN KEY (Distributor_ID)
    REFERENCES Distributors (Distributor_ID)
;

ALTER TABLE Rentals
    ADD FOREIGN KEY (Rental_ID)
    REFERENCES Rental_Charges (Rental_ID)
;
