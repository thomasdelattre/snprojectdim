<?php
include ('../includes/connexion.inc.php');

if (isset($_POST['classe'])){
     foreach($_POST['classe'] as $key => $cours){
    
            $query="DELETE FROM classe WHERE idClasse='".$cours."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
          $query="DELETE FROM contenir WHERE idClasse='".$cours."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
          $query="DELETE FROM appartenir WHERE idC='".$cours."'";
             $prep = $pdo->prepare($query);
            $prep->execute();
        
    }
}
//on redirige l'utilisateur sur la page index.php
header('Location:../administration.php');
?>