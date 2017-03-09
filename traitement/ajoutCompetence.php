<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) && isset($_POST['coef']) && !empty($_POST['coef']) && isset($_POST['classe']) && !empty($_POST['classe'])){
   
    $query = 'INSERT INTO competence (libelle, coef, idP) VALUES (:nom, :coef, :idP)';
    $prep = $pdo->prepare($query);
	
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':coef', $_POST['coef']);
	$prep->bindValue(':idP', 1);
    
	$prep->execute();
    
    foreach($_POST['classe'] as $key => $notes){
        $select="SELECT idC FROM competence WHERE libelle='".$_POST['nom']."'";
        $stmt=$pdo->query($select);
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO appliquer VALUES (".$data['idC'].", ".$notes.")";
             $prep = $pdo->prepare($query);
            $prep->execute();
        }
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>