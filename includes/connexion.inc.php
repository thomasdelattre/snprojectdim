<?php
//connexion a la bdd
$pdo = new PDO('mysql:host=127.0.0.1;dbname=snproject', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->exec("SET CHARACTER SET utf8");
$connecterP=false;
$connecterEtu=false;
if(isset($_COOKIE['CookieConnection']))
{
	$connecterP=true;
	$cookie=$_COOKIE['CookieConnection'];
	$query = 'SELECT * FROM  prof where sid=:sid ';
    $prep = $pdo->prepare($query);
    $prep->bindValue(':sid',$cookie);
    $prep->execute();

	if($data=$prep->fetch())
	{
	    $idP=$data['idP'];
        $nomP=$data['nom'];
        $prenomP=$data['prenom'];

	}

}
if(isset($_COOKIE['CookieConnectionEtu'])){
	$connecterEtu=true;
	$cookie=$_COOKIE['CookieConnectionEtu'];
	$query = 'SELECT * FROM  etudiant where sid=:sid ';
    $prep = $pdo->prepare($query);
    $prep->bindValue(':sid',$cookie);
    $prep->execute();

	if($data=$prep->fetch())
	{
	    $idE=$data['idE'];
        $nomE=$data['nom'];
        $prenomE=$data['prenom'];

	}
}
?>