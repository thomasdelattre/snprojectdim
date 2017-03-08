<?php
include ('../includes/connexion.inc.php');
$insertNotes=  $_POST['insertNotes'];
$insertEtudiant=  $_POST['insertEtudiant'];
$insertCompetence=  $_POST['insertCompetence'];

$updateNotes=  $_POST['updateNotes'];
$updateEtudiant=  $_POST['updateEtudiant'];
$updateCompetence=  $_POST['updateCompetence'];

foreach($insertNotes as $key => $notes){
    if($notes!=""){
        $select="SELECT idC FROM competence WHERE libelle='".$insertCompetence[$key]."'";
        $stmt=$pdo->query($select);
        
		while ($data = $stmt->fetch()) {
            $query="INSERT INTO notes (note, idE, idC) VALUES (:note, :idE, :idC)";
            $prep = $pdo->prepare($query);
            $prep->bindValue(':note', $notes);
	        $prep->bindValue(':idE', $insertEtudiant[$key]);
            $prep->bindValue(':idC', $data['idC']);
            
            $prep->execute();
        }
    }
}


foreach($updateNotes as $key => $notes){
    if($notes!=""){
        $update="SELECT idC FROM competence WHERE libelle='".$updateCompetence[$key]."'";
        $stmt=$pdo->query($update);
        
		while ($data = $stmt->fetch()) {
            $updateS="SELECT note FROM notes WHERE idE='".$updateEtudiant[$key]."' AND idC='".$data['idC']."'";
            $stmtS=$pdo->query($updateS);
            while ($dataS = $stmtS->fetch()) {
                if($dataS['note']!=$notes){
                    $query="UPDATE notes SET note=:note, dateN=NOW() WHERE idE=:idE AND idC=:idC";
                    $prep = $pdo->prepare($query);
                    $prep->bindValue(':note', $notes);
                    $prep->bindValue(':idE', $updateEtudiant[$key]);
                    $prep->bindValue(':idC', $data['idC']);
                    $prep->execute();
                }
            }
        }
    }
}


//on redirige l'utilisateur sur la page index.php
header('Location:../notes.php');
?>