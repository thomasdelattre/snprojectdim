<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['etudiants'])){
     foreach($_POST['etudiants'] as $key => $etudiant){
            $query="DELETE FROM notes WHERE idE='".$etudiant."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
          $query="DELETE FROM appartenir WHERE idE='".$etudiant."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
            $query="DELETE FROM etudiant WHERE idE='".$etudiant."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
          
        
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>