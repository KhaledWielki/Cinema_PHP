<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    
        
        

    try {
        $conn = new PDO("mysql:host=$servername;dbname=cinema", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully"; 
  
        $customer_email = $_POST['email'];
        $customer_password = $_POST['password'];
        
        $customer_email = stripcslashes($customer_email);
        $customer_password = stripslashes($customer_password);
        
        mysql_connect("localhost", "root", "");
        mysql_select_db("cinema");
        
        $result = mysql_query("SELECT * FROM customers WHERE customer_email = '$customer_email' AND password = '$customer_password'")
                or die(" Failed to query database ".mysql_error());
        $row = mysql_fetch_array($result);
        if($row['email'] == $customer_email && $row['password'] == $customer_password) {
            echo "login success! Welcome " .$row['email'];
        }
        else {
            echo "failed to login";
        }
            
        }
    catch(PDOException $e)
        {
        echo "Connection failed: " . $e->getMessage();
        }
        
?>