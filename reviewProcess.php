<html>
<body>




<?php
  $rating = $_GET['rtng'];
  $username = $_GET['un'];
  $password = $_GET['pw'];
  $review = $_GET['review'];
  $songName = $_COOKIE['song'];

  $conn = pg_connect(getenv("DATABASE_URL"));

  $songResult = pg_query($conn, "SELECT songid,ratingCount,AvgRating FROM songdata WHERE songname='$songName;");

  $songRow = pg_fetch_row($songResult);

  $songID = $songRow[0];

  echo $songID;

  $userResult = pg_query($conn, "SELECT UserID FROM accountdata WHERE username=$username");
  $userRow = pg_fetch_row($userResult);
  $userID = $userRow[0];

  $currentAvg = $songRow[2];
  $currentReviews = $songRow[1] + 1;
  $totalVoteSum = $currentAvg*$currentReviews + $rating;
  $newAverage = $totalVoteSum/$currentReviews;

  $newReview = pq_query($conn, "INSERT INTO reviews (SID,UID,rating,textreview,TotalVotes) values ($songID,$userID,$rating,$review,1)");
  $songReview = pg_query($conn, "UPDATE songdata SET AvgRating=$newAverage,ratingCount=$currentReviews WHERE songID=$songID");

  ?>

  <center><b>Review Published</b></center>
  <br>
  <center>
    <a href="accountcreation.php" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" >Back</a>
    <a href="index.php" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" >Home</a>
  </center>
</body>
</html>
