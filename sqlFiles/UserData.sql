CREATE TABLE AccountData(
	UserID 				SERIAL PRIMARY KEY	NOT NULL,
	UserName			TEXT 	NOT NULL,
	UserPassword		TEXT	NOT NULL,
	Verified 			INT,
	ReviewCount			INT
);


INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES ('Garrett','gahe0404', 0, 0);
INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES ('Mattie','madi6851', 0, 0);
INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES ('Sanaa','muot5862', 0, 0);
INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES ('Priyanka','prka4960', 0, 0);
INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES ('Zack' ,'zate8983', 0, 0);
INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES ('Matthew' ,'masi9192', 0, 0);



