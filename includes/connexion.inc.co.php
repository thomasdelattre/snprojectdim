<?php
//connexion a la bdd
$pdo = new PDO('mysql:host=127.0.0.1;dbname=snproject', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->exec("SET CHARACTER SET utf8");
?>