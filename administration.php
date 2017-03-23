<?php
include ('includes/connexion.inc.php');
if($connecterP==true){
include('includes/haut.inc.php');
?>

<div class="fullWidth">
    <a href="changeMdp.php" class="btn btn-success textCenter" style="width:20%;margin-left:40%">Changer votre mot de passe</a>
</div>
<?php include('includes/ajoutClasse.inc.php'); ?>
<?php include('includes/ajoutCours.inc.php'); ?>
<?php include('includes/ajoutComp.inc.php'); ?>
<?php include('includes/ajoutEtudiant.inc.php'); ?>

<?php
include('includes/bas.inc.php');
}else{
    header('Location: login.php');  
}
?>