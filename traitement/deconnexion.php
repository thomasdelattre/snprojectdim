<?php 
include('../includes/connexion.inc.php');
if($connecterP==true){
setCookie("CookieConnection",'',time()-3600);
header('Location:../login.php');
}
if($connecterEtu==true)
{
setCookie("CookieConnectionEtu",'',time()-3600);
header('Location:../login.php');
}
 ?>