<!doctype HTML>
<html>
	<head>
		<meta charset="utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <link rel="stylesheet" href="login.css">
    	<link rel="stylesheet" href="nav.css">
		<title> Random Access Music: About </title>
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
      				<!-- <li class="nav-item dropdown">
       		 			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Explore Music </a>
        				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
         					<a class="dropdown-item" href="#">Rock</a>
          					<a class="dropdown-item" href="#">Hip-Hop</a>
          					<a class="dropdown-item" href="#">Country</a>
          					<a class="dropdown-item" href="#">Classical</a>
          					<a class="dropdown-item" href="#">Jazz</a>
          					<div class="dropdown-divider"></div>
          					<a class="dropdown-item" href="#">Random Song</a>
        				</div>
      				</li> -->
      			</ul>
      			<form class="form-inline my-2 my-lg-0">
      				<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="nav_search">Search
              </button>
							<a href="login.php" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" id="nav_login">Log in</a>
   				 </form>
      		</div>

		</nav>
		<form action="/login-check.php">
    <h2 style="text-align:center;padding-top:50px;">Log In</h2>


      <div class="container" style="width:500px;height:250px;margin:auto;">
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="uname" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" required>

        <button id="login" type="submit">Login</button>
      </div>
		</form>
      <div class="container" style="margin-top:75px;background-color:#f1f1f1;width:474px;height:75px;">
        <a href="accountcreation.php" class="btn btn-info" role="button">Create Account</a>
        <span class="psw"><a href="#">Forgot password?</a></span>
      </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
