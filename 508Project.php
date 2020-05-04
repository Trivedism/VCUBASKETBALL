<?php
global $db;
	define("DB_HOST", "localhost");
    define("DB_USER", "root");
    define("DB_PASSWORD", "");
    define("DB_DATABASE", "MySQL");

    $db = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
    echo "Here are your player Options, Select one ";
?>
<select name = "players">
<?php
$sql = "SELECT * FROM players;";
		$result = mysqli_query($db, $sql);
		$resultCheck = mysqli_num_rows($result);
			while($row = mysqli_fetch_assoc($result)) {
			$player_names = $row[first_name];
			$player_heights = $row[last_name];
			echo "player names are: ";
			echo "<option value = '$player_names'> $player_names $player_heights</option>";
}
?>
</select>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action = "phpB.php" method = "get">
		Enter Players First Name: <input type = "text" name = "name">
		<input type = "submit">
		</form>
		<?php
		$sql = "SELECT * FROM players WHERE first_name = '".$_GET["name"]."';";
		$result = mysqli_query($db, $sql);
		$resultCheck = mysqli_num_rows($result);
		if($resultCheck>0) {
		while($row = mysqli_fetch_assoc($result)) {
			$player_heights = $row["height"];
			echo "The Height of the player is ".$row["height"];
			}
			}
		?>
</body>
</html>
