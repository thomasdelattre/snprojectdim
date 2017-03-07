<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) && isset($_POST['coef']) && !empty($_POST['coef'])){
   
    $query = 'INSERT INTO competence (libelle, coef, idP) VALUES (:nom, :coef, :idP)';
    $prep = $pdo->prepare($query);
	
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':coef', $_POST['coef']);
	$prep->bindValue(':idP', 1);
    
	$prep->execute();
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>