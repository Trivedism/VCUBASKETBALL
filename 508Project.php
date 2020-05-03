<?php

$txt = "Hello world!";
$x = 5;
$y = 10.5;

echo $txt;
echo "<br>";

$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "VCU_BASKETBALL";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";


// Create database
$sql = "CREATE DATABASE myDB";
if (mysqli_query($conn, $sql)) {
    echo "Database created successfully";
} else {
    echo "Error creating database: " . mysqli_error($conn);
}

}

$conn->close();
?>
