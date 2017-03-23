<?php
include ('includes/connexion.inc.co.php');
include('includes/haut.inc.login.php');
setcookie("CookieConnection",'',time()+300);
setcookie("CookieConnectionEtu",'',time()+300);

//Traitement de connexion 
$messagerr='';
$idE="1";
if(isset($_POST['usern']) && isset($_POST['mdp']))
{  
    $email =$_POST['usern'];
    $mdp=$_POST['mdp'];
    $mdp=md5($mdp);

    if($email!=''&&$mdp!='')
    {
        $query = "SELECT * FROM prof where login='$email' && mdp='$mdp'";
        $stmt = $pdo->query($query);
        if($data=$stmt->fetch())
        {
                $id=$data['idP'];
            $sid=md5($email.$mdp.time());
            setcookie("CookieConnection",$sid);

            $query = 'UPDATE  prof SET sid=:sid where idP= :id';
                $prep = $pdo->prepare($query);
                $prep->bindValue(':sid',$sid);
                $prep->bindValue(':id', $id);
                $prep->execute();

            header('Location:cours.php');
        }

else
         {
        $query = "SELECT * FROM etudiant where login='$email' && mdp='$mdp'";
        $stmt = $pdo->query($query);
        if($data=$stmt->fetch())
        {
            $idE=$data['idE'];
            $sid=md5($email.$mdp.time());
            setcookie("CookieConnectionEtu",$sid);

            $query = 'UPDATE  etudiant SET sid=:sid where idE= :idE';
                $prep = $pdo->prepare($query);
                $prep->bindValue(':sid',$sid);
                $prep->bindValue(':idE', $idE);
                $prep->execute();

            header('Location:indexEtu.php');      
            }
        }
    
}
}
?>
    <div class="container-fluid">
        <div class="site-pusher">   
            <div class="row">
                <div class="col-md-offset-4 col-md-4 connexion">
                    <div class="login">
                        <h1>Connexion</h1>
                        <form method="post" action="login.php">
                            <input type="text" name="usern" placeholder="Username" required="required" />
                            <input type="password" name="mdp" placeholder="Password" required="required" />
                            <button type="submit" class="btn btn-primary btn-block btn-large">Se connecter</button>
                            <label class="erreur"><?php echo $messagerr ;?></label>
                        </form>
                    </div>   
                </div>	
            </div>

<?php
include('includes/bas.inc.php');
?>