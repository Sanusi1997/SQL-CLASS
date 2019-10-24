use classwork2;

CREATE TABLE Artist (
ArtistID	Integer  NOT NULL,
ArtistName	Char(35)	NOT NULL,	
Rating		Numeric(2,0)		NULL,	
Phone		Numeric(10,0)		NOT NULL,
CONSTRAINT	Artist_PK	PRIMARY KEY(ArtistID)

);

CREATE TABLE Album (
ArtistID	Integer  NOT NULL,
Track		Integer	 NOT NULL,	
Genre		Char(35)	NULL,	
YearReleased Integer	NOT NULL,
DayReleased   Char(35)	NOT NULL,
TimeReleased	Numeric(8,2) NOT NULL,
CONSTRAINT	Album_PK	PRIMARY KEY(YearReleased, DayReleased,TimeReleased), 
CONSTRAINT	Album_FK	FOREIGN KEY(ArtistID)
						References Artist(ArtistID)
);

INSERT INTO Artist Values (
01,'Maher Zain', 4, 08023476892
);

INSERT INTO Artist Values (
02,'Zain Malik', 5, 08023473492
);
INSERT INTO Artist Values (
03,'Travis Scott', 7, 08023474532
);

INSERT INTO Album Values (
01,7, "R n B", 2011, 'Sunday', 9
);
INSERT INTO Album Values (
02,8, "Blues", 2009, 'Monday', 10
);



select * 
from Artist;

select *
from Album;



select *
From Artist JOIN Album
On Artist.ArtistID = Album.ArtistID;

select ArtistName, Phone, YearReleased, Track
From Artist JOIN Album
On Artist.ArtistID = Album.ArtistID;

