<?php

$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "std1";

// Create connection
    $conn = mysqli_connect($servername, $username, $password);
    mysqli_select_db($conn,$dbname);
    mysqli_query($conn, "SET names 'utf8'");
// Check connection
if (!$conn) {
	
die("Connection failed: " . mysqli_connect_error());

}

?>