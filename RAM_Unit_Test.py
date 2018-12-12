import unittest
import os
import testing.postgresql
import psycopg2
from nose.tools import eq_
from db_helper_functions import AddSong, AddAccount, AddReview

db = None
db_con = None
db_conf = None

def slurp(path):
		with open(path, 'r') as f:
			return f.read()

class TestDatabase(unittest.TestCase):
	def setUp(self):
		global db, db_con, db_conf
		db = testing.postgresql.Postgresql()
		db_conf = db.dsn()
		db_con = psycopg2.connect(**db_conf)
		db_con.set_isolation_level(psycopg2.extensions.ISOLATION_LEVEL_AUTOCOMMIT)
		with db_con.cursor() as cur:
			cur.execute(slurp('/home/user/Documents/test_db_init.sql'))

	def test_add_song(self):
		AddSong(db_conf, 'Warp Drive', 'Dirt Monkey')
		with db_con.cursor() as cur:
			cur.execute("""SELECT SongID, SongName, SongArtist FROM SongData;""")
			rows = cur.fetchall()
			eq_(rows, [(1, "Warp Drive", "Dirt Monkey")])

	def test_add_review(self):
		AddReview(db_conf, 1, 1, 1, "This is a great song!", 1)
		with db_con.cursor() as cur:
			cur.execute("""SELECT SID, UID, rating, textreview, TotalVotes FROM Reviews""")
			rows = cur.fetchall()
			eq_(rows, [(1, 1, 1, "This is a great song!", 1)])

	def test_add_account(self):
		AddAccount(db_conf, "Gary", "password", 1, 5)
		with db_con.cursor() as cur:
			cur.execute("""SELECT UserName, UserPassword, Verified, ReviewCount FROM AccountData""")
			rows = cur.fetchall()
			eq_(rows, [("Gary","password",1,5)])

	def tearDown(self):
		db_con.close()
		db.stop()


if __name__ == '__main__':
		unittest.main()
