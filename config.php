<?php
$servername = "Localhost";
$username = "root";
$password = "password";
$dbname = "inventoryManager";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

$locations = array("s1", "s2", "w1", "w2");

// Check connection
//if (!$conn) {
//  die("Connection failed: " . mysqli_connect_error());
//}
//echo "Connected successfully";
?>