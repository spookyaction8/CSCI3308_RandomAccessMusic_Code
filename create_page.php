<!DOCTYPE html>
<html>

<head>
 LALALALALALALA
</head>
<body>
<br>
<?php

$conn = pg_connect(getenv("DATABASE_URL"));

if (!$conn) {
  echo "An error occurred.\n";
  exit;
}

$result = pg_query($conn, "SELECT * FROM accountdata");

echo $result;
echo "<br>";

/*if (!$result) {
  echo "An error occurred.\n";
  exit;
}*/

while ($row = pg_fetch_row($result)) {
  echo "$row[0]";
  echo "<br>";
}

?>
<br>
<br>
<?php
print $_GET['email'];
print "<br>";
print $_GET['psw'];
print "<br>";
print $_GET['psw-repeat'];
print "<br>";
?>

</body>
</html>