<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Data - KoI</title>
    <link rel="stylesheet" href="CSS/topNavStyle.css">
</head>
<body>
    <div class="topnav">
        <a href="main.php">Home</a>
        <a href="database.html">Database</a>
        <a href="search.html">Search</a>
        <a class="active" href="add.html">Add Data</a>
        <a href="login.html">Logout</a>
      </div>
<?php
    include("config.php");
    $table = $_POST["table"];
    if($table == "employee"){
        echo "<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                SSN: <input type='text' name='ssn'>
                <br>
                First Name: <input type='text' name='firstName'>
                <br>
                Last Name: <input type='text' name='lastName'>
                <br>
                Gender: <input type='text' name='gender'>
                <br>
                Email: <input type='text' name='email'>
                <br>
                Password: <input type='password' name='password'>
                <br>
                Role: <input type='text' name='role'>
                <br>
                Salary: <input type='number' name='salary'>
                <br>
                <input type='submit'>
             </form>";
    }

    if($table == "store"){
        $query = "SELECT COUNT(store_id)
                  FROM store;";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        $stores = $row[0];
        $storeID = "s" . $stores + 1;

        echo"<br>";


        echo "<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                <input type='hidden' value='$storeID' name='storeID'>
                Store Name: <input type='text' name='name'>
                <br>
                Store Address: <input type='text' name='address'>
                <br>
                <input type='submit'>
            </form>";

    }

    if($table == "warehouse"){

        $query = "SELECT COUNT(warehouse_id)
                  FROM warehouse;";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_row($result);
        $warehouses = $row[0];
        $warehouseID = "w" . $warehouses + 1;

        echo"<br>";


        echo "<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                <input type='hidden' value='$warehouseID' name='warehouseID'>
                Warehouse Name: <input type='text' name='name'>
                <br>
                Warehouse Address: <input type='text' name='address'>
                <br>
                <input type='submit'>
            </form>";
        
    }

    if($table == "supplier"){
        echo "<br>";

        echo"<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                Supplier's First Name: <input type='text' name='firstName'>
                <br>
                Supplier's Last Name: <input type='text' name='lastName'>
                <br>
                Supplier's Company Name: <input type='text' name='company'>
                <br>
                Supplier's Company Address: <input type='text' name='address'>
                <br>
                <input type='submit'>
            </form>";
        
    }

    if($table == "customerorder"){

        echo "<br>";

        $today = date("Y-m-d");

        echo"<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                Customer ID: <input type='text' name='customerID'>
                <br>
                Product ID:  <input type='text' name='productID'>
                <br>
                Quantity: <input type='number' name='quantity'>
                <br>
                Store ID: <input type='text' name='storeID'>
                <br>
                Purchase Date: <input type='date' name='purchaseDate' value='$today'>
                <br>
                <input type='submit'>
            </form>";
        
    }

    if($table == "supplierorder"){
        echo "<br>";

        $today = date("Y-m-d");

        echo"<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                Supplier ID: <input type='text' name='supplierID'>
                <br>
                Product ID:  <input type='text' name='productID'>
                <br>
                Quantity: <input type='number' name='quantity'>
                <br>
                Price: <input type='number' name='price'>
                <br>
                Location Stored: <input type='text' name='locationID'>
                <br>
                Order Date: <input type='date' name='orderDate'>
                <br>
                Arrival Date: <input type='date' name='arrivalDate' value='$today'>
                <br>
                <input type='submit'>
            </form>";
        
    }

    if($table == "producttransfer"){
        echo "<br>";

        $today = date("Y-m-d");

        echo"<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                Product ID:  <input type='text' name='productID'>
                <br>
                Source ID: <input type='text' name='source'>
                <br>
                Destination ID: <input type='text' name='destination'>
                <br>
                Quantity: <input type='number' name='quantity'>
                <br>
                Transfer Date: <input type='date' name='transferDate' value='$today'>
                <br>
                <input type='submit'>
            </form>";
        
    }

    if($table == "customer"){
        echo "<br>";

        

        echo"<form action='add-submit.php' method='post'>
                <input type='hidden' value='$table' name='table'>
                Customer's First Name: <input type='text' name='firstName'>
                <br>
                Customer's Last Name: <input type='text' name='lastName'>
                <br>
                Customer's Gender: <input type='text' name='gender'>
                <br>
                <input type='submit'>
            </form>";
        
    }

    if($table == "product"){
        echo "<br>";

        echo"<form action='add-submit.php' method='post' id='productForm'>
                <input type='hidden' value='$table' name='table'>
                Product Name: <input type='text' name='name'>
                <br>
                Price: <input type='number' name='price' step='0.01'>
                <br>
                <textarea name='description' form='productForm' rows='4' cols='50'>Enter Product Description Here... </textarea>
                <br>
                <input type='submit'>

            </form>";
            

    }
?>