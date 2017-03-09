<?php
//connexion a la bdd
$pdo = new PDO('mysql:host=127.0.0.1;dbname=snproject', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->exec("SET CHARACTER SET utf8");
if(isset($_COOKIE['CookieConnection']))
{
	$connecter=true;
	$cookie=$_COOKIE['CookieConnection'];
	$query = 'SELECT * FROM  prof where sid=:sid ';
    $prep = $pdo->prepare($query);
    $prep->bindValue(':sid',$cookie);
    $prep->execute();

	if($data=$prep->fetch())
	{
		 
		$connecter=false;
	}

}
else
 header('Location:./login.php');
?>