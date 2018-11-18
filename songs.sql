CREATE TABLE SONGDATA(
	SongID 				SERIAL      PRIMARY KEY,
	SongName			TEXT 		NOT NULL,
	SongArtist			TEXT		NOT NULL,
	SongGenre			CHAR(30),
	SongAlbum			TEXT,
	ClicksPerSong		INT,
	AvgRating			FLOAT(2),
	RatingCount			INT,
	Votes				INT
);

INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM AltRockSongs;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM CountrySongs;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM EDMDance;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM Dubstep;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM HardRock;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM HipHop;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM LoFi;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM Pop;
INSERT INTO SongData(SongName,SongArtist,SongGenre) SELECT Name, Artist, Genre FROM Rap;

UPDATE SongData
SET ClicksPerSong=0;

UPDATE SongData
SET AvgRating=0.00;

UPDATE SongData
SET RatingCount=0;

UPDATE SongData
SET Votes=0;



CREATE TABLE ALTROCKSONGS(
	Name 	TEXT	NOT NULL,
	Artist  TEXT	NOT NULL
);

CREATE TABLE COUNTRYSONGS(
	Name 	TEXT 	NOT NULL,
	Artist  TEXT    NOT NULL
);

CREATE TABLE EDMDANCE(
	Name  	TEXT	NOT NULL,
	Artist  TEXT	NOT NULL
);

CREATE TABLE DUBSTEP(
	Name 	TEXT 	NOT NULL,
	Artist 	TEXT 	NOT NULL
);

CREATE TABLE HARDROCK(
	Name 	TEXT	NOT NULL,
	Artist 	TEXT 	NOT NULL
);

CREATE TABLE HIPHOP(
	Name 	TEXT 	NOT NULL,
	Artist 	TEXT 	NOT NULL
);

CREATE TABLE LOFI(
	Name 	TEXT 	NOT NULL,
	Artist 	TEXT 	NOT NULL
);

CREATE TABLE POP(
	Name 	TEXT	NOT NULL,
	Artist 	TEXT 	NOT NULL
);

CREATE TABLE RAP(
	Name 	TEXT 	NOT NULL,
	Artist 	TEXT 	NOT NULL
);


ALTER TABLE AltRockSongs ADD COLUMN Genre TEXT;
UPDATE AltRockSongs
SET genre='Alternative Rock';

ALTER TABLE CountrySongs ADD COLUMN Genre TEXT;
UPDATE CountrySongs
SET genre='Country';

ALTER TABLE EDMDance ADD COLUMN Genre TEXT;
UPDATE EDMDance
SET genre='EDMDance';

ALTER TABLE Dubstep ADD COLUMN Genre TEXT;
UPDATE Dubstep
SET genre='Dubstep';

ALTER TABLE HardRock ADD COLUMN Genre TEXT;
UPDATE HardRock
SET genre='Hard Rock';

ALTER TABLE HipHop ADD COLUMN Genre TEXT;
UPDATE HipHop
SET genre='HipHop';

ALTER TABLE LoFi ADD COLUMN Genre TEXT;
UPDATE LoFi
SET genre='LoFi';

ALTER TABLE Pop ADD COLUMN Genre TEXT;
UPDATE Pop
SET genre='Pop';

ALTER TABLE Rap ADD COLUMN Genre TEXT;
UPDATE Rap
SET genre='Rap';


COPY ALTROCKSONGS (Name,Artist) FROM '/home/user/Documents/RAM/files1/AltRockParsednoDash.txt' WITH DELIMITER ',';
COPY COUNTRYSONGS (Name,Artist) FROM '/home/user/Documents/RAM/files1/CountryParsednoDash.txt' WITH DELIMITER ',';
COPY EDMDANCE (Name,Artist) FROM '/home/user/Documents/RAM/files1/DanceEDMParsednoDash.txt' WITH DELIMITER ',';
COPY DUBSTEP (Name,Artist) FROM '/home/user/Documents/RAM/files1/DubstepParsednoDash.txt' WITH DELIMITER ',';
COPY HARDROCK (Artist,Name) FROM '/home/user/Documents/RAM/files1/HardRockParsednoDash.txt' WITH DELIMITER ',';
COPY HIPHOP (Name,Artist) FROM '/home/user/Documents/RAM/files1/HipHopParsednoDash.txt' WITH DELIMITER ',';
COPY LOFI (Artist,Name) FROM '/home/user/Documents/RAM/files1/LoFiParsednoDash.txt' WITH DELIMITER ',';
COPY POP (Artist,Name) FROM '/home/user/Documents/RAM/files1/PopParsednoDash.txt' WITH DELIMITER ',';
COPY RAP (Artist,Name) FROM '/home/user/Documents/RAM/files1/RapParsednoDash.txt' WITH DELIMITER ',';