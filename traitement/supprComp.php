<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['competences'])){
     foreach($_POST['competences'] as $key => $competence){
        $query="DELETE FROM notes WHERE idC='".$competence."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
         
            $query="DELETE FROM competence WHERE idC='".$competence."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
          
          $query="DELETE FROM appliquer WHERE idComp='".$competence."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
        
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>