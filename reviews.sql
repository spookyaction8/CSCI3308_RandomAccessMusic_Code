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

INSERT INTO Reviews(SID, UID, rating, textreview, TotalVotes) VALUES (1,1,0,'Good Review',0);