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
$query = "SELECT SongID,SongName,SongArtist, avgrating FROM songdata WHERE songName='$search'";
$resultSong = pg_query($conn,$query);
$rowSong = pg_fetch_row($resultSong);


if (pg_num_rows($resultSong)==0) {
  echo "An error occurred. Section 1\n";
	header('Location: http://csci3308-ram.herokuapp.com/songNotFound.php');
	exit();
}


$variableSong = $rowSong[0];

$query = "SELECT rating, textreview, uid, totalVotes FROM reviews WHERE (SID::INTEGER)={$variableSong}";

$resultReview = pg_query($conn, $query);
$rowReview = pg_fetch_row($resultReview);
if (!$resultReview) {
  echo "An error occurred. Section 2\n";
  
}



$variableReview = $rowReview[2];
$query2 = "SELECT username FROM accountdata WHERE userid={$variableReview}";


$resultAccount = pg_query($conn, $query2);


$rowAccount = pg_fetch_row($resultAccount);

//echo "<h1>";
//echo "STUPID HEAD";
//echo "</h1>";

?>
	<div class="container">
		<img src="https://jarphotos.me/wp-content/themes/jarphoto/img/album.jpg" alt="album placeholder" style="float:left;width:500px;height:500px;padding-top:20px"
		<br><br>
		<h1><?php echo $rowSong[1]; ?></h1>
			<br>
		<h1><i><?php echo $rowSong[2]; ?></h1>
			<br>
		<h1><b>Average review score: </b><?php echo round($rowSong[3], 2); ?>/5</h1>
		
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
			<div class="container" style="padding-bottom:15px">
		    <div class="row">
		        <div class="col-sm-8">
		            <div class="panel panel-white post panel-shadow">
		                <div class="post-heading">
		                    <div class="pull-left meta">
		                        <div class="title h5">
		                            <p>Review by <b><?php echo $rowAccount[0];?></b></p>
		                        </div>
		                    </div>
		                </div>
		                <div class="post-description">
		                    <p><?php echo $rowReview[1];?></p>
		                    <div class="stats">
														<p><?php echo $rowReview[0];?> out of 5</p>
		                        <a class="btn btn-default stat-item">
		                            <i class="fa fa-thumbs-up icon"></i>
		                        </a>
		                        <a class="btn btn-default stat-item">
		                            <i class="fa fa-thumbs-down icon"></i>
		                        </a>
		                    </div>
		                </div>
		            </div>
		        </div>
		        <div class="col-sm-4">
		        	<center> <a href="writeReview.php?search=<?php echo $search?>" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" style="background-color: green;"> Write A Review</a> <center>
		        </div>
		    </div>
		</div>
  </body>


		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>
