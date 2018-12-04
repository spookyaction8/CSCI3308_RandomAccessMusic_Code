CREATE TABLE REVIEWS(
	SID SERIAL PRIMARY KEY NOT NULL,
	UID INT,
	rating INT,
	textreview TEXT,
	TotalVotes INT
);

UPDATE Reviews
SET rating=0;

UPDATE Reviews
SET TotalVotes=0.00;