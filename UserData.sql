CREATE TABLE UserData(
	UserID INT  PRIMARY KEY 		NOT NULL,
	UserName			TEXT 		NOT NULL,
	UserPassword		TEXT		NOT NULL,
	Verified 			BIT			NOT NULL,
	ReviewCount			INT
);