<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="pl">
	<head>
        <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" context="IE=edge,chrome=1"/>
	<title>Dodawanie rezerwacji</title>
	</head>
    <body>
        <h2>Wypełnij pola poniżej:</h2>
        
        <form action="insert_movie.php" method="POST">
        Nazwa filmu:
        <input type="text" name="movie_name"/><br><br>
        Opis filmu:
        <input type="text" name="movie_description"/><br><br>
        Gatunek filmu:
        <input type="text" name="movie_genre"/><br><br>
        <input type="submit" value="Add"/>
    </form>       
    </body>   
</html>

