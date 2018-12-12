<html>
<body>




<?php
  $rating = $_GET['rtng'];
  $username = $_GET['un'];
  $password = $_GET['pw'];
  $review = $_GET['review'];
  $songName = $_COOKIE['song'];
  
  $conn = pg_connect(getenv("DATABASE_URL"));

  $songResult = pg_query($conn, "SELECT songid FROM songdata WHERE songname='$songName;");

  $songRow = pg_fetch_row($songResult);

  $songID = $songRow[0];

  echo $songID;



  ?>
</body>
</html>
