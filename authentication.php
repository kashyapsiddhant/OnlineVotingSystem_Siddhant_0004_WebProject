<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SVS</title>
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font styles (Ubuntu, Raleway, Oswald, Roboto Condensed) -->
    <style>
        /* ... (your style definitions remain unchanged) ... */
    </style>
</head>
<body>
    <div class="container">
        <?php
            // Credentials
            $hostname = "localhost";
            $username = "root";
            $password = "";
            $database = "db_evoting";

            // Establish Connection
            $conn = mysqli_connect($hostname, $username, $password, $database);

            // Check Connection
            if (!$conn) {
                die("Connection Failed: " . mysqli_connect_error());
            }

            // UserInput Test
            function test_input($data, $conn) {
                $data = trim($data);
                $data = stripslashes($data);
                $data = htmlspecialchars($data);
                $data = mysqli_real_escape_string($conn, $data);
                return $data;
            }

            if (empty($_POST['adminUserName']) || empty($_POST['adminPassword'])) {
                $error = "UserName or Password is Required.";
            } else {
                $admin_username = test_input($_POST['adminUserName'], $conn);
                $admin_password = test_input($_POST['adminPassword'], $conn);

                // Use prepared statement to prevent SQL injection
                $sql = "SELECT * FROM tbl_admin WHERE admin_username=? AND admin_password=?";
                $stmt = mysqli_prepare($conn, $sql);
                mysqli_stmt_bind_param($stmt, "ss", $admin_username, $admin_password);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);

                if (mysqli_stmt_num_rows($stmt) == 1) {
                    header("location:cpanel.php");
                } else {
                    $error = "Sorry!! Authentication Failed";
                    echo "<p class='alert alert-danger'><strong>$error</strong></p>";
                    echo "<p class='normalFont text-primary'><strong>Your Combination of UserName and Password is Incorrect. Better, You contact the developer of the system.</strong></p>";
                    echo "<br><a href='admin.html' class='btn btn-primary'><span class='glyphicon glyphicon-refresh'></span> <strong>Try Again</strong></a>";
                }

                mysqli_stmt_close($stmt);
            }

            // Close Connection
            mysqli_close($conn);
        ?>
    </div>

    <!-- Bootstrap and jQuery JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
