-- DROP DATABASE IF EXISTS pet_database;
-- CREATE DATABASE pet_database;
-- USE pet_database;

-- DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY,
  owner VARCHAR(45),
  species VARCHAR(45) ,
  gender CHAR(1) CHECK(gender USER INPUT("M" or "F")),
  birth DATE
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(15),
  eventdate DATE,
  eventtype VARCHAR(15),
  remark VARCHAR(255),
  FOREIGN KEY (petname),
  PRIMARY KEY (eventdate)
);