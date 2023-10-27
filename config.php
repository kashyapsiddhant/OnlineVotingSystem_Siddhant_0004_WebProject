<?php

	$hostname = "localhost";
	$username = "root";
	$password = "";
	$database = "db_evoting";

	// Establishing a database connection
	$conn = mysqli_connect($hostname, $username, $password, $database);

	// Check the connection
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	// UserInput Test
	function test_input($data, $conn) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		$data = mysqli_real_escape_string($conn, $data);
		return $data;
	}
?>
