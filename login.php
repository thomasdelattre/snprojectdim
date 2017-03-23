<?php
include ('includes/connexion.inc.co.php');
include('includes/haut.inc.login.php');
setcookie("CookieConnection",'',time()+300);

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
<!DOCTYPE html>
<html lang="fr">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
     <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <script src="js/index.js"></script>

  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(http://fonts.googleapis.com/css?family=Open+Sans);
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 10px; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
.btn-block { width: 100%; display:block; }

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

.connexion
{
    background-color: #C0C0C0 !important ;
}
.login { 

    
   
    width:100%;
    height:50%;
}
.login h1 { color: #000; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

input { 
    width: 100%; 
    margin-bottom: 10px; 
    background: rgba(0,0,0,0.3);
    border: none;
    outline: none;
    padding: 10px;
    font-size: 13px;
    color: #fff;
    text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
    border: 1px solid rgba(0,0,0,0.3);
    border-radius: 4px;
    box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
    -webkit-transition: box-shadow .5s ease;
    -moz-transition: box-shadow .5s ease;
    -o-transition: box-shadow .5s ease;
    -ms-transition: box-shadow .5s ease;
    transition: box-shadow .5s ease;
}
input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
img 
{
    width: 100%;
}

    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>

<body id="page-top" class="index">
<section>
    <div class="container-fluid">
        <div class="site-pusher">



      
   </header>

<div class="row">

<div class="col-md-4">
<img src="" alt="" />
</div>
<div class="col-md-8">
<h1>Site de notation par compétences  </h1>
</div>

</div>
    <header>
<div class="row">
<div class="col-md-8">
<img src="images/paris.png" alt="" />
</div>
<div class="col-md-4 connexion">
	<div class="login">
    <h1>Connexion</h1>
    <form method="post" action="login.php">
        <input type="text" name="usern" placeholder="Username" required="required" />
        <input type="password" name="mdp" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Se connecter</button>
        <label class="erreur"><?php echo $messagerr ;?></label>
    </form>
    </div>
  
    <script src="js/index.js"></script>
</div>	
</div>

<?php
include('includes/bas.inc.php');
?>