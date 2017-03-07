<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) && isset($_POST['prenom']) && !empty($_POST['prenom']) && isset($_POST['classe']) && !empty($_POST['classe'])){
  
    $query = 'INSERT INTO etudiant (nom, prenom, login, mdp) VALUES (:nom, :prenom, :login, :mdp)';
    $prep = $pdo->prepare($query);
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':prenom', $_POST['prenom']);
    $prep->bindValue(':login', strtolower($_POST['nom'].".".$_POST['prenom']));
     $prep->bindValue(':mdp', strtolower($_POST['nom'].".".$_POST['prenom']));
	$prep->execute();
    
    $query="SELECT idE FROM etudiant WHERE nom='".$_POST['nom']."' AND prenom='".$_POST['prenom']."'";
    $stmt=$pdo->query($query);
    
    
		while ($data = $stmt->fetch()) {
        
        //$classe= explode(" ",  $_POST['classe']);
        $query1="INSERT INTO appartenir (idC, idE) VALUES (:idC, :idE)";
        $prep1 = $pdo->prepare($query1);
        $prep1->bindValue(':idC', $_POST['classe']/*$classe[0]*/);
	    $prep1->bindValue(':idE', $data['idE']);
        $prep1->execute();
    }
    
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>