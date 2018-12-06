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
    	<link rel="stylesheet" href="homepage.css">
    	<link rel="stylesheet" href="nav.css">
		<title> Random Access Music: Home </title>
	</head>

	<body>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    
    <img src="finalrecord.gif" alt="gif" style="width:75px;height:75px;">
    
        <a class="navbar-brand" href="homepage.html" style="color: yellow;"> Random Access Music </a>
  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
    			<ul class="navbar-nav mr-auto">
      				<li class="nav-item active" id="nav_ele">
        				<a class="nav-link" href="homepage.html">Home <span class="sr-only">(current)</span></a>
     				</li>
      				<li class="nav-item" id="nav_ele">
        				<a class="nav-link" href="about.html">About</a>
      				</li>
      				<li class="nav-item" id="nav_ele">
        				<a class="nav-link" href="charts.html">Charts</a>
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
							<a href="login.html" class="btn btn-outline-success my-2 my-sm-0" role="button" type="nav-link" id="nav_login">Log in</a>
   				 </form>
      		</div>

		</nav>
		<div class="col-5" id="review">
    		<h2> Song not reviewed?</h2>
    		<h3> Be the first to write one!</h3>
    			<form>
					<br>
					<div class="form-group">
						<label for="Artist"> <b> Song Artist</b> </label>
						<input type="text" class="form-control" id="Artist" placeholder="Enter song artist.">
					</div>
					<div class="form-group">
						<label for="SongTitle"> <b> Song Title</b> </label>
						<input type="email" class="form-control" id="Title" placeholder="Enter song title.">
					</div>
					<div class="form-group">
						<label for="Song album"> <b> Song Album</b> </label>
						<input type="" class="form-control" id="email1" placeholder="Enter song Album.">
					</div>
					<label for="Rating"> <b> Rating out of 5 Stars</b> </label>
					<div class="rating">
						<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
						</div>
					<br>
					<div class="form-group">
						<label for="Review"> <b> Review </b> </label>
						<textarea class="form-control" rows="4" placeholder="Enter Review Here."></textarea>
          <br>
          <div class="form-group">
            <label for="userName"> <b> Username </b> </label>
            <input type="text" class="form-control-sm" id="userName" placeholder="Enter Username">
            <label for="password"> <b> Password </b> </label>
            <input type="text" class="form-control-sm" id="password" placeholder="Enter Password">
					</div>

			 		<button type="submit" class="btn btn-primary"  id="searchButton"> Submit</button>

				</form>

    		</div>
    	</div>
	</div>


		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>