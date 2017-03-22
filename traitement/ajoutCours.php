<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['nom'])  && !empty($_POST['nom']) ){
    if(isset($_POST['description']) && !empty($_POST['description'])){
        $query = 'INSERT INTO cours (libelle, description, idP) VALUES (:nom, :description, :idP)';
         $prep = $pdo->prepare($query);
        $prep->bindValue(':description', $_POST['description']);
    }
    else{
         $query = 'INSERT INTO cours (libelle, description, idP) VALUES (:nom, "", :idP)';
         $prep = $pdo->prepare($query);
    }
   
	
	$prep->bindValue(':nom', $_POST['nom']);
	$prep->bindValue(':idP', $idP);
    
	$prep->execute();
    
     foreach($_POST['competences'] as $key => $competence){
        $select="SELECT idC FROM cours WHERE idC=@@identity AND idP=$idP";
        $stmt=$pdo->query($select);
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO appliquer VALUES (".$competence.", ".$data['idC'].")";
             $prep = $pdo->prepare($query);
            $prep->execute();
        }
    }
    
    foreach($_POST['classe'] as $key => $classe){
        $select="SELECT idC FROM cours WHERE idC=@@identity AND idP=$idP";
        $stmt=$pdo->query($select);
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO contenir VALUES (".$classe.", ".$data['idC'].")";
             $prep = $pdo->prepare($query);
            $prep->execute();
        }
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>