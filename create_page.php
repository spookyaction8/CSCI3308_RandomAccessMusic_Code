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

$username = $_GET['usn'];
$password = $_GET['psw'];
$password_rp = $_GET['psw-repeat'];

$conn = pg_connect(getenv("DATABASE_URL"));

if (!$conn) {
  echo "An error occurred.\n";
  exit;
}

$username_result = pg_query($conn, "SELECT userid FROM accountdata WHERE username = '$username'");

$row = pg_fetch_row($username_result);

echo $row[0];

if (!$username_result) {
  echo "An error occurred.\n";
  exit;
}

if($password != $password_rp)
{
  echo "<p> Passwords do not match. </p>";
}






?>
<br>
<br>


</body>
</html>