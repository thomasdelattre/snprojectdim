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
	    $idP=$data['idP'];
		$connecter=false;
        $nomP=$data['nom'];
        $prenomP=$data['prenom'];

	}

}
else
if(isset($_COOKIE['CookieConnectionEtu']))
{
	$connecter=true;
	$cookie=$_COOKIE['CookieConnectionEtu'];
	$query = 'SELECT * FROM  etudiant where sid=:sid ';
    $prep = $pdo->prepare($query);
    $prep->bindValue(':sid',$cookie);
    $prep->execute();

	if($data=$prep->fetch())
	{
	    $idE=$data['idE'];
		$connecter=false;
        $nomE=$data['nom'];
        $prenomE=$data['prenom'];

	}
}
?>