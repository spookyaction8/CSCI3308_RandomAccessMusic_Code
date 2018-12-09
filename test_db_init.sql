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
CREATE TABLE AccountData(
	UserID 				SERIAL PRIMARY KEY,
	UserName			TEXT 	NOT NULL,
	UserPassword		TEXT	NOT NULL,
	Verified 			INT,
	ReviewCount			INT
);
CREATE TABLE REVIEWS(
	SID INT PRIMARY KEY,
	UID INT,
	rating INT NOT NULL,
	textreview TEXT NOT NULL,
	TotalVotes INT
);