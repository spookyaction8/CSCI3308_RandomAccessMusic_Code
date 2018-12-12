<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="create_page.css">
    <link rel="stylesheet" href="nav.css">
  <title> Random Access Music: Account Creation </title>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <img src="finalrecord.gif" alt="gif" style="width:75px;height:75px;">

      <a class="navbar-brand" href="index.php" style="color: yellow;"> Random Access Music </a>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item" id="nav_ele">
              <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
          </li>
            <li class="nav-item active" id="nav_ele">
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
<br>




<?php
  $rating = $_GET['rtng'];
  $username = $_GET['un'];
  $password = $_GET['pw'];
  $review = $_GET['textreview'];
  $songName = $_COOKIE['song'];

  $conn = pg_connect(getenv("DATABASE_URL"));

  $songResult = pg_query($conn, "SELECT songid,ratingCount,AvgRating FROM songdata WHERE songname='$songName'");

  $songRow = pg_fetch_row($songResult);

  $songID = $songRow[0];

  

  $content = "Working";
  $userResult = pg_query($conn, "SELECT UserID, userpassword FROM accountdata WHERE username='$username'");

  $userRow = pg_fetch_row($userResult);

  $UserID = $userRow[0];

  echo $UserID;
  echo "<br>";

  $UserPass = $userRow[1];

  
  if($UserPass != $password){
    $content = "Account not found (Username or password incorrect). Please try again.";
  }
  else {
    $userRow = pg_fetch_row($userResult);
    $userID = $userRow[0];
    echo $userID;
    echo "<br>";

    $currentAvg = $songRow[2];
    $currentReviews = $songRow[1] + 1;
    $totalVoteSum = $currentAvg*$songRow[1] + $rating;
    $newAverage = $totalVoteSum/$currentReviews;

    $query1 = "INSERT INTO reviews (SID,UID,rating,textreview,TotalVotes) VALUES ({$songID},{$userID},{$rating},'{$review}',1)";
    echo $query1;
    echo "<br>";
    $newReview = pg_query($conn, $query1);
    echo "new review effect: ";
    echo pg_affected_rows($newReview);
    echo "<br>";
    $query2 = "UPDATE songdata SET AvgRating={$newAverage},ratingCount={$currentReviews} WHERE songID={$songID}";
    $songReview = pg_query($conn, $query2);
    echo "song review effect: ";
    echo pg_affected_rows($songReview);
    echo "<br>";

    $content = "Review Submitted.";
  }
  ?>

  <center><b><?php echo $content?></b></center>
  <br>
  <center>
    <a href="index.php" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" >Home</a>
  </center>
</body>
</html>
