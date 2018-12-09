<!doctype HTML>
<html>
  <body>
   
    <?php
      $conn = pg_connect(getenv("DATABASE_URL");

      if(!$conn){
        echo "An error has occured.";
        exit;
      }

      $pwd = $_GET['pwd'];
      $uname = $_GET['uname'];

      $username = pg_query($conn,"SELECT username FROM accountdata WHERE username=$username");
      echo $username;
      $password = pg_query($conn,"SELECT userpassword FROM accountdata WHERE password=$pwd");
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
