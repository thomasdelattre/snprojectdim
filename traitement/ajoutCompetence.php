<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) && isset($_POST['coef']) && !empty($_POST['coef'])){
   
    $query = 'INSERT INTO competence (libelle, coef, idP) VALUES (:nom, :coef, :idP)';
    $prep = $pdo->prepare($query);
	
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':coef', $_POST['coef']);
	$prep->bindValue(':idP', $idP);
    
	$prep->execute();
    
    foreach($_POST['cours'] as $key => $idCours){
        $select="SELECT idC FROM competence WHERE idC=@@identity AND idP=$idP";
        $stmt=$pdo->query($select);
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO appliquer VALUES (".$data['idC'].", ".$idCours.")";
             $prep = $pdo->prepare($query);
            $prep->execute();
        }
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>