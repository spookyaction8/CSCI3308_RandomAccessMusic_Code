<!--

Random Access Music
About page HTML

-->

<!doctype HTML>
<html>
	<head>
		<meta charset="utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    	<link rel="stylesheet" href="about.css">
    	<link rel="stylesheet" href="nav.css">
		<title> Random Access Music: About </title>
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

    	<div class="row" id="aboutCol">
    		<div class="col-md-6" id="aboutDiv1">
    			<h1> Who Are We? </h1>
    			<p>Random Access Music is a clean and sleek music discovery and reviewing platform that allows users to discover new music and artists based off of other user ratings. Our goal is to have a user maintained website, where users can discover new songs based off of what other people are listening to. Our platform will include features such as verified critics, for users who are experienced with critiquing music. Additional features will include general user reviews, for any user who creates an account with the site and music will be rated on a five star system. Also, having a section for featured songs, albums, and artists of the week, and user-rated billboards. </p>
    		</div>
    		<div class="col-md-6" id="aboutDiv2">

    			<h1> Any Concerns? Contact us. </h1>
    			<form action="mailto:sanaazer13@gmail.com" method="post" enctype="text/plain">
                    <br>
                    <div class="form-group">
                        <label for="First and Last Name"> <b> Name </b> </label>
                        <input type="text" name="First and Last Name" class="form-control" id="name1" placeholder="Enter full name.">
                    </div>
                    <div class="form-group">
                        <label for="email1"> <b> Email address </b> </label>
                        <input type="email" name="Email" class="form-control" id="email1" placeholder="Enter email.">
                    </div>
                    <div class="form-group">
                        <label for="message1"> <b> Message </b> </label>
                        <textarea class="form-control" name="Comment" rows="4" placeholder="Enter some text here."></textarea>
                    </div>

                    <button type="submit" class="btn btn-primary"  id="searchButton"> Submit</button>

                </form>

    		</div>
    	</div>



		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>
