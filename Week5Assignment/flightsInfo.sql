/*
  flightsinfo.sql
*/

DROP TABLE IF EXISTS flightsinfo;

CREATE TABLE flightsinfo
(
  airline varchar(50) NOT NULL,
  ontime varchar(25) NOT NULL,
  la int NULL,
  phoenix int NULL,
  sd int NULL,
  sf int NULL,
  seattle int NULL
);

SELECT * FROM flightsinfo;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\flightsInfo.csv' 
INTO TABLE flightsinfo
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(airline, ontime, la, phoenix, sd, sf, seattle)
;

SELECT COUNT(*) FROM flightsInfo;