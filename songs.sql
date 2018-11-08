CREATE TABLE SONGS(
	SongID INT  PRIMARY KEY			NOT NULL,
	SongName			TEXT 		NOT NULL,
	SongArtist			TEXT		NOT NULL,
	SongGenre			CHAR(30),
	SongAlbum			TEXT,
	ClicksPerSong		INT			NOT NULL,
	AvgRating			FLOAT(2)	NOT NULL,
	RatingCount			INT			NOT NULL
);

COPY SONGS (SongName, SongArtist) FROM 'AltRockParsed.txt' WITH DELIMITER '-';