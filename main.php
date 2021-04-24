<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Manager - Home</title>
    <link rel="stylesheet" href="CSS/topNavStyle.css">

</head>
<body>
    <div class="topnav">
        <a class="active" href="main.php">Home</a>
        <a href="database.html">Database</a>
        <a href="search.html">Search</a>
        <a href="add.html">Add Data</a>
        <a href="login.html">Logout</a>
      </div>

      <h1>Inventory Management Database</h1>

      <?php
        include("config.php");
        $query = "SELECT COUNT(ssn)
                  FROM employee;";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        echo "Number of employees: $row[0] <br>";

        $query = "SELECT AVG(salary)
                  FROM employee;";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        echo "Average Salary: $$row[0] <br>";

        $query = "SELECT COUNT( DISTINCT name)
                  FROM product;";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        echo "Number of products: $row[0] <br>";

        $query = "SELECT SUM(spending_total)
                  FROM customer;";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        echo "Total Consumer Spending: $$row[0] <br>";
    ?>
    
</body>
</html>

