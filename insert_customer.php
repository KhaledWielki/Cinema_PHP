 <?php
            $servername = "localhost";
            $username = "root";
            $password = "";

        try {
            $conn = new PDO("mysql:host=$servername;dbname=cinema", $username, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


            $customer_first_name = $_POST['first_name'];
            $customer_last_name = $_POST['last_name'];    
            $customer_email = $_POST['email'];
            $customer_password = $_POST['password'];       
            $customer_phone = $_POST['phone'];      


            $sql = "INSERT INTO customers (customer_id, customer_first_name, customer_last_name, customer_email, password, customer_phone)
            VALUES ('', '$customer_first_name', '$customer_last_name', '$customer_email', '$customer_password', '$customer_phone')";
            // use exec() because no results are returned
            $conn->exec($sql);
            echo "$customer_first_name udało się założyć konto!";
            }
        catch(PDOException $e)
            {
            echo $sql . "<br>" . $e->getMessage();
            }

?>