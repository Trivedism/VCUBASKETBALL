<?php
global $db;
	define("DB_HOST", "localhost");
    define("DB_USER", "root");
    define("DB_PASSWORD", "");
    define("DB_DATABASE", "MySQL");

    $db = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
?>
<select name = "players">
<?php
$sql = "SELECT * FROM players;";
		$result = mysqli_query($db, $sql);
		$resultCheck = mysqli_num_rows($result);
		if($resultCheck>0) {
			while($row = mysqli_fetch_assoc($result)) {
			$player_names = $row[full_name];
			echo "player names are: ";
			echo "<option value = '$player_names'> $player_names</option>";
}
}
?>
</select>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
</body>
</html>
