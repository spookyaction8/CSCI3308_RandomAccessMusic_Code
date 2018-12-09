<!doctype HTML>
<html>
  
  <head>
  HAHAHAHA
  </head>

  <body>
  <?php

    
      $conn = pg_connect(getenv("DATABASE_URL"));

      if(!$conn){
        echo "An error has occured.";
        exit;
      }

      $pswd = $_GET['psw'];
      $usname = $_GET['uname'];
      //echo $pswd;
      //echo $usname;

      $username = pg_query($conn,"SELECT username FROM accountdata WHERE username=$usname");
      echo $username;
      $password = pg_query($conn,"SELECT userpassword FROM accountdata WHERE userpassword=$pswd");
      echo $password;
      /*if($_GET["uname"] == $username && $_GET["psw"] == $password){
        print "User: " . $username . "verified.<br>"
        print "Redirecting..."
      }
      else{
        print "Sorry, the username and password you have entered do not match. Please try again."
      }*/
  ?> 




  stupid head
  </body>
</html>