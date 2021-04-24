<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Database</title>
    <link rel="stylesheet" href="CSS/topNavStyle.css">
</head>
<body>
    <div class="topnav">
        <a href="main.php">Home</a>
        <a class="active" href="database.html">Database</a>
        <a href="search.html">Search</a>
        <a href="add.html">Add Data</a>
        <a href="login.html">Logout</a>
      </div>

      <br>

<?php
    include("config.php");
    $table = $_POST['table'];

    if($table == "employee"){
        $query = "SELECT ssn, first_name, last_name, gender, email, role, salary
                  FROM employee;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1>" . ucfirst($table) . "</h1>";
                echo "<table>";
                echo "<tr>
                        <th> SSN </th>
                        <th> First Name </th>
                        <th> Last Name </th>
                        <th> Gender </th>
                        <th> Email </th>
                        <th> Role </th>
                        <th> Salary </th>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "<td>" . $row[5] . "</td> ";
                  echo "<td> $" . $row[6] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
                echo "For the safety of our employees, their passwords are not displayed.";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "store"){
        $query = "SELECT *
                  FROM store;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1>" . ucfirst($table) . "</h1>";
                echo "<table>";
                echo "<tr>
                        <th> Store ID </th>
                        <th> Store Name </th>
                        <th> Store Address </th>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "warehouse"){
        $query = "SELECT *
                  FROM warehouse;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1>" . ucfirst($table) . "</h1>";
                echo "<table>";
                echo "<tr>
                        <th> Warehouse ID </th>
                        <th> Warehouse Name </th>
                        <th> Warehouse Address </th>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "supplier"){
        $query = "SELECT *
                  FROM supplier;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1>" . ucfirst($table) . "</h1>";
                echo "<table>";
                echo "<tr>
                        <th> Supplier ID </th>
                        <th> First Name </th>
                        <th> Last Name </th>
                        <th> Company </th>
                        <th> Address </h>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "product"){
        $query = "SELECT *
                  FROM product;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1>" . ucfirst($table) . "</h1>";
                echo "<table>";
                echo "<tr>
                        <th> Product ID </th>
                        <th> Name </th>
                        <th> Description </th>
                        <th> Price </th>
                        <th> Stock </th>
                        <th> Location </th>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "<td>" . $row[5] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "customerorder"){
        $query = "SELECT *
                  FROM customerorder;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1> Customer Orders </h1>";
                echo "<table>";
                echo "<tr>
                        <th> Order ID </th>
                        <th> Customer ID </th>
                        <th> Product ID </th>
                        <th> Quantity </th>
                        <th> Total Price </th>
                        <th> Store </th>
                        <th> Purchase Date </th>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "<td>" . $row[5] . "</td> ";
                  echo "<td>" . $row[6] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "supplierorder"){
        $query = "SELECT *
                  FROM supplierorder;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1> Supplier Orders </h1>";
                echo "<table>";
                echo "<tr>
                        <th> Order ID </th>
                        <th> Supplier ID </th>
                        <th> Product ID </th>
                        <th> Quantity </th>
                        <th> Total Price </th>
                        <th> Location ID </th>
                        <th> Order Date </th>
                        <th> Arrival Date </th>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "<td>" . $row[5] . "</td> ";
                  echo "<td>" . $row[6] . "</td> ";
                  echo "<td>" . $row[7] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "producttransfer"){
        $query = "SELECT *
                  FROM producttransfer;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1> Product Transfers </h1>";
                echo "<table>";
                echo "<tr>
                        <th> Transfer ID </th>
                        <th> Product ID </th>
                        <th> Source </th>
                        <th> Destination </h>
                        <th> Quantity </th>
                        <th> Transfer Date </h>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "<td>" . $row[5] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    if($table == "customer"){
        $query = "SELECT *
                  FROM customer;";
        if (mysqli_query($conn, $query)) {
            $result = mysqli_query($conn, $query);
            if (mysqli_num_rows($result) > 0) {
                // output data of each row
                echo "<h1> Customer </h1>";
                echo "<table>";
                echo "<tr>
                        <th> Customer ID </th>
                        <th> First Name </th>
                        <th> Last Name </th>
                        <th> Gender </h>
                        <th> Total Spending </h>
                        <th> Register Date </h>
                      </tr>";
                while($row = mysqli_fetch_row($result)){
                 
                  echo "<tr>";      
                  echo "<td>" . $row[0] . "</td>";
                  echo "<td>" . $row[1] . "</td> ";
                  echo "<td>" . $row[2] . "</td> ";
                  echo "<td>" . $row[3] . "</td> ";
                  echo "<td>" . $row[4] . "</td> ";
                  echo "<td>" . $row[5] . "</td> ";
                  echo "</tr>";
            
                }
                echo "</table>";
  
              } else {
                echo "0 results";
              }
            }
    }

    
?>