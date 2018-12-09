import psycopg2

def AddSong(db_conf, songName, songArtist):
	sql = """INSERT INTO SongData(SongName, SongArtist) VALUES (%s, %s);"""
	with psycopg2.connect(**db_conf) as con:
		with con.cursor() as cur:
			cur.execute(sql,(songName, songArtist))

def AddReview(db_conf, SID, UID, rating, textreview, totalVotes):
		sql = """INSERT INTO Reviews(SID, UID, rating, textreview, TotalVotes) VALUES (%s, %s, %s, %s, %s);"""
		with psycopg2.connect(**db_conf) as con:
			with con.cursor() as cur:
				cur.execute(sql,(SID, UID, rating, textreview, totalVotes))

def AddAccount(db_conf, UserName, UserPassword, Verified, ReviewCount):
	sql = """INSERT INTO AccountData(UserName, UserPassword, Verified, ReviewCount) VALUES (%s, %s, %s, %s);"""
	with psycopg2.connect(**db_conf) as con:
		with con.cursor() as cur:
			cur.execute(sql,(UserName, UserPassword, Verified, ReviewCount))

