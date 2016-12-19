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
	<title>Utwórz nowe kino</title>
	</head>
    <body>
        <h2>Wypełnij pola poniżej:</h2>
        
    <form action="insert_cinema.php" method="POST">
        Nazwa kina:
        <input type="text" name="cinema_name"/><br><br>
        Adres kina:
        <input type="text" name="cinema_address"/><br><br>
        Numer telefonu:
        <input type="text" name="cinema_phone"/><br><br>
        Manager kina:
        <input type="text" name="cinema_manager"/><br><br>
        <input type="submit" value="Add"/>
    </form>       
    </body>   
</html>

