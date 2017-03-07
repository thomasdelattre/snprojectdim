<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) && isset($_POST['description']) && !empty($_POST['description'])){
   
    $query = 'INSERT INTO cours (libelle, description, idP) VALUES (:nom, :description, :idP)';
    $prep = $pdo->prepare($query);
	
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':description', $_POST['description']);
	$prep->bindValue(':idP', 1);
    
	$prep->execute();
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>