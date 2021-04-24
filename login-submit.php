<?php
    include("config.php");

    $appEmail = $_POST['Email'];
    $appPassword = $_POST['Password'];

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    //$hashedPassword = password_hash($appPassword, PASSWORD_BCRYPT);

    $query = "SELECT email, password FROM employee WHERE email = '{$appEmail}' AND password = '{$appPassword}';";

    if (mysqli_num_rows(mysqli_query($conn, $query)) == 0) {
        echo "Username or Password is incorrect <br>";
        echo "<a href='login.html'> Try Again </a>";
      } else{
          header("location:main.php");
      }

?>