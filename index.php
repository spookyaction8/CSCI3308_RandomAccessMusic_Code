<!--

Random Access Music
index HTML

-->

<!doctype HTML>
<html>
	<head>
		<meta charset="utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    	<link rel="stylesheet" href="index.css">
    	<link rel="stylesheet" href="nav.css">
		<title> Random Access Music: Home </title>
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

    <div class="container">
      <br><br>
      <h1>Top Articles</h1>
        <br>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="https://www.billboard.com/files/styles/article_main_image/public/media/anderson-paak-2018-billboard-cr-Israel-Ramos-1548.jpg" alt="Anderson Paak New Release">
                  <div class="carousel-caption">
                    <h3>Anderson Paak's New Single feat. Kendrick Lamar</h3>
                    <p>Click here for our take on his new single "Tints"</p>
                  </div>
                </div>

                <div class="carousel-item">
                  <img src="https://media.wmagazine.com/photos/57d2f99424d0d1ef061db933/4:3/w_1536/1316.flip.covers.KANYE.image.jpg" alt="Kayne Hot Takes">
                  <div class="carousel-caption">
                    <h3>Hot Takes on Kanye West</h3>
                    <p>Hear what we have to think about Kanye</p>
                  </div>
                </div>

                <div class="carousel-item">
                  <img src="https://d2cstorage-a.akamaihd.net/atl/option3/MKhsaxsd31RL2r6Pm/OG.png" alt="TOP Trench">
                  <div class="carousel-caption">
                    <h3>Trench Review</h3>
                    <p>New TOP album - Trench</p>
                  </div>
                </div>
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    </div>
    <br><br>
    <div class="container">
      <h2>Featured Artists</h2>
      <p><i><small>Top Artists This Week</small></i></p>
      <div class="card-deck" style="width:1200px;height:500px;margin:auto;padding-bottom:15px;">
         <!--  took out card <div class="card">
            <img class="card-img-top" src="https://www.billboard.com/files/styles/article_main_image/public/media/lil-wayne-newark-nj-billboard-1548.jpg" alt="Lil Wayne">
            <div class="card-body">

              <h4 class="card-title"><i>Lil Wayne</i></h4>
              <p class="card-text">With <i><b>Tha Carter V </i></b>dropping just a few weeks ago, Lil Wayne is poised to take the rap scene back.</p>
              <a href="#" class="btn btn-primary">Artist Page</a>
            </div>
          </div> -->
          <iframe src="https://open.spotify.com/embed/user/spotifycharts/playlist/37i9dQZEVXbLRQDuF5jeBp" width="300"
		  height="500" frameborder="0" allowtransparency="true" allow="encrypted-media" style="padding-bottom:15px"></iframe>
          <div class="card">
            <img class="card-img-top" src="https://ssle.ulximg.com/image/750x750/cover/1535058703_68d9b79e806ab354d0c2de0d79b46f9c.jpg/bb723a52a426398ac385ac3a486815cc/1535058703_d1b09792ad3ef8313df22d20a1d131fc.jpg" alt="Lil Baby">
            <div class="card-body">
              <h4 class="card-title"><i>Lil Baby </i></h4>
              <p class="card-text">Having taken the latin hip-hop scene by storm, Lil Baby is running up the numbers in his genre.</p>
            </div>
          </div>
          <div class="card">
            <img class="card-img-top" src="https://s3.amazonaws.com/s3.wzmxfm.radio.com/styles/delta__775x515/s3/Screen-Shot-2018-05-14-at-3_02_38-PM.png?itok=IRI0liYr" alt="Joji">
            <div class="card-body">
              <h4 class="card-title"><i>Joji</i></h4>
              <p class="card-text">Releasing single after single, Joji is prepping the Lo-Fi Hip-hop scene for the release of his new album.</p>
            </div>
          </div>
          <div class="card">
            <img class="card-img-top" src="https://www.undertheradar.co.nz/images/image.php/potugaltheman20181240.jpeg?width=1220&cropratio=1.8:1&image=/images/newsImages/potugaltheman20181240.jpeg" alt="Portugal, The Man">
            <div class="card-body">
              <h4 class="card-title"><i>Portugal. The Man</i></h4>
              <p class="card-text">After being quiet since the release of their album,<i><b> Home of the Strange</b></i> back in 2016, the group have finally released their new project, <i><b>Mirror Master</b></i></p>
            </div>
          </div>
					
			<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>
