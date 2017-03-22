<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) && isset($_POST['prenom']) && !empty($_POST['prenom']) && isset($_POST['classe']) && !empty($_POST['classe'])){
  
    $query = 'INSERT INTO etudiant (nom, prenom, login, mdp) VALUES (:nom, :prenom, :login, :mdp)';
    $prep = $pdo->prepare($query);
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':prenom', $_POST['prenom']);
    $prep->bindValue(':login', strtolower($_POST['nom'].".".$_POST['prenom']));
     $prep->bindValue(':mdp', md5(strtolower($_POST['nom'].".".$_POST['prenom'])));
	$prep->execute();
    
    
    
    foreach($_POST['classe'] as $key => $classe){
        $query="SELECT idE FROM etudiant WHERE idE=@@identity";
        $stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO appartenir VALUES (".$classe.", ".$data['idE'].")";
            $prep = $pdo->prepare($query);
            $prep->execute();
                
        }
    }
    
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>