<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Data</title>
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

    <br>

    <?php
        include("config.php");
        $table = $_REQUEST['table'];
        

        if($table == "employee"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $ssn = $_POST['ssn'];
                $firstName = $_POST['firstName'];
                $lastName = $_POST['lastName'];
                $gender = $_POST['gender'];
                $email = $_POST['email'];
                $password = $_POST['password'];
                //$hashedPassword = password_hash($password, PASSWORD_BCRYPT);
                $role = $_POST['role'];
                $salary = $_POST['salary'];

                $query = "insert into EMPLOYEE (ssn, first_name, last_name, gender, email, password, role, salary)
                values ('$ssn', '$firstName', '$lastName', '$gender', '$email', '$password', '$role', '$salary');";
                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }
        }

        if($table == "store"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $storeID = $_REQUEST['storeID'];
                $storeName = $_POST['name'];
                $storeAddress = $_POST['address'];

                $query = "INSERT INTO store (store_id, name, address) values ('$storeID', '$storeName',
                '$storeAddress');";

                array_push($locations, "$storeID");

                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }

        }

        if($table == "warehouse"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $ID = $_REQUEST['warehouseID'];
                $Name = $_POST['name'];
                $Address = $_POST['address'];

                $query = "INSERT INTO WAREHOUSE (warehouse_id, name, address) values ('$ID', '$Name', '$Address');";
                
                array_push($locations, "$ID");


                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }

        }

        if($table == "supplier"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $firstName = $_POST['firstName'];
                $lastName = $_POST['lastName'];
                $company = $_POST['company'];
                $address = $_POST['address'];

                $query = "INSERT INTO SUPPLIER (first_name, last_name, company, address)
                values ('$firstName', '$lastName', '$company', '$address');";
                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }

        }

        if($table == "customerorder"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $customerID = $_POST['customerID'];
                $productID = $_POST['productID'];
                $quantity = $_POST['quantity'];
                $storeID = $_POST['storeID'];
                $purchaseDate = $_POST['purchaseDate'];

                $priceQuery = "SELECT price
                               FROM product
                               WHERE product_id = $productID;";

                $result = mysqli_query($conn, $priceQuery);
                $row = mysqli_fetch_row($result);
                $price = $row[0] * $quantity;

                $nameQuery = "SELECT name 
                              FROM product
                              WHERE product_id = '$productID'; ";
                $result = mysqli_query($conn, $nameQuery);
                $row = mysqli_fetch_row($result);
                $productName = $row[0];

                $stockUpdateQuery = "UPDATE product 
                                     SET stock = stock - '$quantity'
                                     WHERE name = '$productName' AND location = '$storeID'
                                     AND stock > 0;";
                mysqli_query($conn, $stockUpdateQuery);

                $spendingQuery="UPDATE customer
                                SET spending_total = spending_total + '$price'
                                WHERE id = '$customerID';";
                mysqli_query($conn, $spendingQuery);
            
                

                $query = "INSERT INTO customerorder (customer_id, product_id, quantity, price, store, purchase_date)
                values ('$customerID', '$productID', '$quantity', '$price', '$storeID', '$purchaseDate');";
                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully <br>";
                    echo "Total price is: $" . $price;
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }

        }

        if($table == "supplierorder"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $supplierID = $_POST['supplierID'];
                $productID = $_POST['productID'];
                $quantity = $_POST['quantity'];
                $price = $_POST['price'];
                $locationID = $_POST['locationID'];
                $orderDate = $_POST['orderDate'];
                $arrivalDate = $_POST['arrivalDate'];

                $nameQuery = "SELECT name 
                              FROM product
                              WHERE product_id = '$productID'; ";
                $result = mysqli_query($conn, $nameQuery);
                $row = mysqli_fetch_row($result);
                $productName = $row[0];

                $stockUpdateQuery = "UPDATE product 
                                     SET stock = stock + '$quantity'
                                     WHERE name = '$productName' AND location = '$locationID';";
                if(mysqli_query($conn, $stockUpdateQuery)){
                    echo "Stock updated.";
                }else {
                    echo "Error: " . $stockUpdateQuery . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
               
            
                

                $query = "INSERT INTO supplierorder (supplier_id, product_id, quantity, price, location_id,
                          order_date, arrival_date)
                          VALUES ('$supplierID', '$productID', '$quantity', '$price', '$locationID', '$orderDate',
                          '$arrivalDate');";

                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }


        }

        if($table == "producttransfer"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $productID = $_POST['productID'];
                $source = $_POST['source'];
                $destination = $_POST['destination'];
                $quantity = $_POST['quantity'];
                $transferDate = $_POST['transferDate'];

                $nameQuery = "SELECT name 
                              FROM product
                              WHERE product_id = '$productID'; ";
                $result = mysqli_query($conn, $nameQuery);
                $row = mysqli_fetch_row($result);
                $productName = $row[0];

                $stockUpdateQuery = "UPDATE product 
                                     SET stock = stock + '$quantity'
                                     WHERE name = '$productName' AND location= '$destination';";
                $result = mysqli_query($conn, $stockUpdateQuery);


                $stockUpdateQuery = "UPDATE product 
                                     SET stock = stock - '$quantity'
                                     WHERE name = '$productName' AND location = '$source';";
                $result = mysqli_query($conn, $stockUpdateQuery);
            
                

                $query = "INSERT INTO producttransfer (product_id, source, destination, quantity, transfer_date)
                          VALUES ('$productID', '$source', '$destination', '$quantity', '$transferDate');";
                          
                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }


        }

        if($table == "customer"){
            $today = date("Y-m-d");

            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $firstName = $_POST['firstName'];
                $lastName = $_POST['lastName'];
                $gender = $_POST['gender'];
                $spendingTotal = 0;
                $registerDate = $today;
            

                $query = "INSERT INTO customer (first_name, last_name, gender, spending_total, register_date)
                          VALUES ('$firstName', '$lastName', '$gender', '$spendingTotal', '$registerDate');";
                          
                if (mysqli_query($conn, $query)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                }
            }
            

        }

        if($table == "product"){
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $productName = $_POST['name'];
                $price = $_POST['price'];
                $description = $_POST['description'];
                $stock = 0;

                foreach ($locations as $location){
                    $query = "INSERT INTO product (name, description, price, stock, location)
                              VALUES ('$productName', '$description', '$price', '$stock', '$location');";
                          
                    if (mysqli_query($conn, $query)) {
                        echo "New record created successfully";
                        echo "<br>";
                    } else {
                        echo "Error: " . $query . "<br>" . mysqli_error($conn) . "<br>" . mysqli_connect_error();
                    }

                }

                
            }

        }
    ?>
</body>

