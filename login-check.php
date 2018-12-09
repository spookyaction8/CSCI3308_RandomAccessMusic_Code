<!doctype HTML>
<html>
  <body>
    <?php
      $conn = pg_connect(getenv("DATABASE_URL");

      if(!$conn){
        echo "An error has occured.\n";
        exit;
      }

      $username = pg_query($conn,"SELECT username from accountdata WHERE username=$_GET['uname']");
      echo $username;
      $password = pg_query($conn,"SELECT userpassword from accountdata WHERE username=$_GET['uname']");
      echo $password;
      /*if($_GET["uname"] == $username && $_GET["psw"] == $password){
        print "User: " . $username . "verified.<br>"
        print "Redirecting..."
      }
      else{
        print "Sorry, the username and password you have entered do not match. Please try again."
      }*/
    ?>
  </body>
</html>
