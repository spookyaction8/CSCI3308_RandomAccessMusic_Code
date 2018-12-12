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
$search = $_GET['search'];//Need to name a value brought over by songPage
$query = "SELECT SongName,SongArtist,SongAlbum,SongID,SongGenre FROM songdata WHERE songName='". $search . "'";
$resultSong = pg_query($conn,$query);
if (!$resultSong) {
  echo "An error occurred.\n";
  exit;
}
//$query2 = "SELECT SID, rating, textreview from reviews where SID='$resultSong[4]'";
//$resultReview = pg_query($conn,$query2);
$rowSong = pg_fetch_row($resultSong);
//$rowReview = pg_fetch_row($resultReview);

//$conn->close();

//echo "<h1>";
//echo "STUPID HEAD";
//echo "</h1>";

?>
<br>
  <h2 style="text-align:center;padding-top:10px;"> Review: <?php echo $rowSong[0]; ?> by, <?php echo $rowSong[1]; ?></h2>
		<div class="container" style="width:750px;height:250px;margin:auto;">
			<form action="/reviewProcess.php" method="get">
          <!-- <br>
    			<form class = "form-horizontal" role ="form" style = "width: 100%">
  					<div class="form-group">
  						<label for="SongName"> <b> Song Title</b> </label>
  						<div class = "col-med-10">
                <input type="text" class="form-control" id="SongName" name = "SongName" placeholder="Enter song name" value = "" required>
              </div>
  					</div>
            <div class="form-group">
              <label for="SongArtist"> <b> Song Artist</b></label>
              <div class = "col-med-10">
                <input type="text" class="form-control" id="SongArtist" name = "SongArtist" placeholder="Enter song artist" value = "" required>
              </div>
            </div>
            <div class="form-group">
              <label for="SongAlbum"><b> Song Album</b></label>
              <div class = "col-med-10">
                <input type="text" class="form-control" id="SongAlbum" name = "SongAlbum" placeholder="Enter song album" value = "" required>
              </div>
            </div>
            <div class = "button">
              <label for="SongGenre"> <b> Song Genre</b></label>
              <br>
              <select id="SongGenre">
                <option value ="">Choose an option</option>
                <option value = "Alternative Rock">Alternative Rock</option>
                <option value = "Country">Country</option>
                <option value = "EDMDance">EDM Dance</option>
                <option value = "Dubstep">Dub Step</option>
                <option value = "Hard Rock">Hard Rock</option>
                <option value = "HipHop">Hip Hop</option>
                <option value = "LoFi">LoFi</option>
                <option value = "Pop">Pop</option>
                <option value = "Rap">Rap</option>
              </select>
            </div>
            <br> -->
            <label for="rating"> <b> Rating</b></label>
           <div class="txt-center">
                <form>
                    <div class="rating">
                        <input id="star5" name="star" type="radio" value="5" class="radio-btn hide" />
                        <label for="star5">☆</label>
                        <input id="star4" name="star" type="radio" value="4" class="radio-btn hide" />
                        <label for="star4">☆</label>
                        <input id="star3" name="star" type="radio" value="3" class="radio-btn hide" />
                        <label for="star3">☆</label>
                        <input id="star2" name="star" type="radio" value="2" class="radio-btn hide" />
                        <label for="star2">☆</label>
                        <input id="star1" name="star" type="radio" value="1" class="radio-btn hide" />
                        <label for="star1">☆</label>
                        <div class="clear"></div>
                    </div>
                </form>
            </div>
            <br>
            <div class="form-group">
              <label for="textreview"> <b> Review </b> </label>

                <textarea type="text" class="form-control" id="textreview" rows="4" placeholder="Enter Review Here." name = "textreview" value = "" required></textarea>

            </div>
            <br>
            <div class="form-group">
              <label for="userName"> <b> Username </b> </label>
              <input type="text" class="form-control-sm" id="userName" placeholder="Enter Username">
              <label for="password"> <b>    Password </b> </label>
              <input type="text" class="form-control-sm" id="password" placeholder="Enter Password">
  					</div>

  			 		<input type="submit" class="btn btn-primary">
				</form>

    		</div>
    	</div>
	</div>

</body>

</body>

		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>
