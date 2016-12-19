 <?php
            $servername = "localhost";
            $username = "root";
            $password = "";

        try {
            $conn = new PDO("mysql:host=$servername;dbname=cinema", $username, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


            $movie_name = $_POST['movie_name'];
            $movie_description = $_POST['movie_description'];    
            $movie_genre = $_POST['movie_genre'];        


            $sql = "INSERT INTO movies (movie_id, movie_name, movie_description, movie_genre)
            VALUES ('', '$movie_name', '$movie_description', '$movie_genre')";
            // use exec() because no results are returned
            $conn->exec($sql);
            echo "Film pod tytułem: $movie_name został pomyślnie dodany!";
            }
        catch(PDOException $e)
            {
            echo $sql . "<br>" . $e->getMessage();
            }
?>