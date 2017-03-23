<?php 
include ('includes/connexion.inc.php');
if($connecterEtu=="true"){
include('includes/haut.inc.etu.php');
?>
<form action="changeMdp.php" method="post">
    <label>Ancien mot de passe</label>
    <input type="password" name="ancienMdp" />
    <label>Nouveau mot de passe</label>
    <input type="password" name="nouveauMdp"/>
    <label>Confirmation</label>
    <input type="password" name="nouveauMdpConfirmation"/>
    <input class="btn btn-success" type="submit" value="Envoyer" />
</form>
<?php 
if(isset($_POST['ancienMdp']) && isset($_POST['nouveauMdp']) && isset($_POST['nouveauMdpConfirmation'])){
    if($_POST['nouveauMdp'] == $_POST['nouveauMdpConfirmation']){
        $query="SELECT * FROM etudiant WHERE idE='".$idE."' AND mdp='".md5($_POST['ancienMdp'])."'";
        $stmt=$pdo->query($query);
        if($data = $stmt->fetch()) {
            $queryUpdate="UPDATE etudiant SET mdp='".md5($_POST['nouveauMdp'])."' WHERE idE='".$idE."'";
            $prep = $pdo->prepare($queryUpdate);
            $prep->execute();
             ?>
            <h1 style="color:green" class="textCenter">Changement réussi</h1>
            <?php
        }
        else{
             ?>
            <h1 style="color:red" class="textCenter">Ancien mot de passe incorrect</h1>
            <?php
        }
    }
    else{
        ?>
        <h1 style="color:red" class="textCenter">Les mots de passe ne correspondent pas</h1>
        <?php
    }
}
include('includes/bas.inc.php');
}else if($connecterP == "true"){
    include('includes/haut.inc.php');
    ?>
    <form action="changeMdp.php" method="post">
        <label>Ancien mot de passe</label>
        <input type="password" name="ancienMdp" />
        <label>Nouveau mot de passe</label>
        <input type="password" name="nouveauMdp"/>
        <label>Confirmation</label>
        <input type="password" name="nouveauMdpConfirmation"/>
        <input class="btn btn-success" type="submit" value="Envoyer" />
    </form>
    <?php 
    if(isset($_POST['ancienMdp']) && isset($_POST['nouveauMdp']) && isset($_POST['nouveauMdpConfirmation'])){
        if($_POST['nouveauMdp'] == $_POST['nouveauMdpConfirmation']){
            $query="SELECT * FROM prof WHERE idP='".$idP."' AND mdp='".md5($_POST['ancienMdp'])."'";
            $stmt=$pdo->query($query);
            if($data = $stmt->fetch()) {
                $queryUpdate="UPDATE prof SET mdp='".md5($_POST['nouveauMdp'])."' WHERE idP='".$idP."'";
                $prep = $pdo->prepare($queryUpdate);
                $prep->execute();
                 ?>
                <h1 style="color:green" class="textCenter">Changement réussi</h1>
                <?php
            }
            else{
                 ?>
                <h1 style="color:red" class="textCenter">Ancien mot de passe incorrect</h1>
                <?php
            }
        }
        else{
            ?>
            <h1 style="color:red" class="textCenter">Les mots de passe ne correspondent pas</h1>
            <?php
        }
    }
    include('includes/bas.inc.php');
}
else{
    header('Location: login.php');  
}
?>