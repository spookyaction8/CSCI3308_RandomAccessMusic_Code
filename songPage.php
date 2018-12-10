<!--

Random Access Music
About page HTML

-->

<!doctype HTML>
<html>
	<head>
		<meta charset="utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    	<link rel="stylesheet" href="writeReview.css">
    	<link rel="stylesheet" href="nav.css">
		<title> Random Access Music: Write New Review </title>
	</head>

	<body>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <img src="finalrecord.gif" alt="gif" style="width:75px;height:75px;">

        <a class="navbar-brand" href="index.php" style="color: yellow;"> Random Access Music </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
              <li class="nav-item active" id="nav_ele">
                <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
            </li>
              <li class="nav-item" id="nav_ele">
                <a class="nav-link" href="about.php">About</a>
              </li>
              <li class="nav-item" id="nav_ele">
                <a class="nav-link" href="charts.php">Charts</a>
              </li>

            </ul>
            <form action="/songPage.php" class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search for a song" aria-label="Search" name="search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="nav_search">Search
              </button>
              <a href="accountcreation.php" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" id="nav_login">Create an Account</a>
           </form>
          </div>

    </nav>
    <?php


// Create connection
$conn = pg_connect(getenv("DATABASE_URL"));
// Check connection
if (!$conn) {
	echo "An error occurred.\n";
  exit;
}
$search = $_GET['search'];
$query = "SELECT SongName,SongArtist,SongAlbum,AvgRating,SongID,SongGenre FROM songdata WHERE songName='". $search . "'";
$resultSong = pg_query($conn,$query);
if (!$resultSong) {
  echo "An error occurred.\n";
  exit;
}
$query2 = "SELECT SID, rating, textreview from reviews where SID='". $resultSong[4] . "'";
$resultReview = pg_query($conn,$query2);
$rowSong = pg_fetch_row($resultSong);
$rowReview = pg_fetch_row($resultReview);

//$conn->close();

//echo "<h1>";
//echo "STUPID HEAD";
//echo "</h1>";

?>
	<div class="container">
		<br><br>
		<h1><?php echo $rowSong[0]; ?></h1>
			<br>
		<h1><i><?php echo $rowSong[1]; ?></h1>
			<br>
		<h1><b><?php echo $rowSong[2]; ?></h1>
		<h1><b>Average review score: </b><?php echo $rowSong[3]; ?>/5</h1>
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<form action="/writeReview.php" class="btn btn-outline-success" style="float: right;padding-right: 20px;padding-bottom: 20px">Write a Review</button>





  </body>

  </body>


		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>
