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
	<title>Utwórz konto</title>
	</head>
    <body>
        <h2>Wypełnij pola poniżej:</h2>
        
    <form action="insert_customer.php" method="POST">
        First name:
        <input type="text" name="first_name"/><br><br>
        Last name:
        <input type="text" name="last_name"/><br><br>
        Email:
        <input type="text" name="email"/><br><br>
        Password:
        <input type="text" name="password"/><br><br>
        Phone:
        <input type="text" name="phone"/><br><br>
        <input type="submit" value="Dodaj"/>
    </form>
        
       
        
    </body>   
</html>

