<!DOCTYPE html>
<html>

<head>
 LALALALALALALA
</head>
<body>
<br>
<?php
$db = parse_url(getenv("DATABASE_URL"));
$db["path"] = ltrim($db["path"], "/");

$conn = pg_connect(getenv("DATABASE_URL"));

$result = pg_query($conn, "SELECT * FROM accountdata WHERE ");

echo $result;
echo "<br>";

if (!$result) {
  echo "An error occurred.\n";
  exit;
}

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