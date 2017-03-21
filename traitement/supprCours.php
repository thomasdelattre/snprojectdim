<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['cours'])){
     foreach($_POST['cours'] as $key => $cours){
    
            $query="DELETE FROM cours WHERE idC='".$cours."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
          $query="DELETE FROM contenir WHERE idCours='".$cours."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
         $query="DELETE FROM appliquer WHERE idCours='".$cours."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
        
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>