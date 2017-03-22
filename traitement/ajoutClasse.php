<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) ){
    
    $query = 'INSERT INTO classe (libelle, idP) VALUES (:nom, :idP)';
    $prep = $pdo->prepare($query);
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':idP', $idP);
	$prep->execute();
    
     foreach($_POST['cours'] as $key => $cours){
        $select="SELECT idClasse FROM classe WHERE idClasse=@@identity AND idP=$idP";
        $stmt=$pdo->query($select);
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO contenir VALUES (".$data['idClasse'].", ".$cours.")";
             $prep = $pdo->prepare($query);
            $prep->execute();
        }
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>