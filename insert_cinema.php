 <?php
            $servername = "localhost";
            $username = "root";
            $password = "";

        try {
            $conn = new PDO("mysql:host=$servername;dbname=cinema", $username, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


            $cinema_name = $_POST['cinema_name'];
            $cinema_address = $_POST['cinema_address'];    
            $cinema_phone = $_POST['cinema_phone'];
            $cinema_manager = $_POST['cinema_manager'];        


            $sql = "INSERT INTO cinemas (cinema_id, cinema_name, cinema_address, cinema_phone, cinema_manager)
            VALUES ('', '$cinema_name', '$cinema_address', '$cinema_phone', '$cinema_manager')";
            // use exec() because no results are returned
            $conn->exec($sql);
            echo "$cinema_name in city of $cinema_address addition complete!";
            }
        catch(PDOException $e)
            {
            echo $sql . "<br>" . $e->getMessage();
            }
?>