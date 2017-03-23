<?php
include ('includes/connexion.inc.php');
if($connecterP==true){
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
    <h2 class=" titreIndex">Bonjour M / Mme <?=$nomP." ".$prenomP?></h2>
	<a id="boutonAjoutClasse" class="btn btn-primary" href="administration.php">Ajouter une comp&eacute;tence</a>
    <div id="comboEvaluation">
        <form action="competences.php" method="get">
            <select onchange="this.form.submit()" name="cours" class="btn btn-default fullWidth">
				<option>Cours</option>
                <?php 
                
                    $query="SELECT * FROM cours WHERE idP=$idP";
                
                $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                ?>
                 <?php if($data['idC']==$_GET['cours']) {?>
                <option value="<?= $data['idC'] ?>" selected><?= $data['libelle'] ?></option>
                <?php }else { ?> 
                <option value="<?= $data['idC'] ?>"><?= $data['libelle'] ?></option>
                
                <?php } }?>
			</select>
		</form>
	</div>
</div>



<div class="tableauEvaluations row">
	<table>
		<tr>
			<th width="80%">Comp&eacute;tence</th>
			<th>Coefficient</th>
		</tr>
		<?php 
        if(isset($_GET['cours'])){      
            $query="SELECT competence.libelle as libelleComp, coef FROM competence INNER JOIN prof ON competence.idP=prof.idP INNER JOIN appliquer ON competence.idC=appliquer.idComp WHERE idCours='".$_GET['cours']."' AND competence.idP=$idP";
       
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?= $data['libelleComp'] ?></td>
				<td><?= $data['coef'] ?></td>	
			</tr>
			<?php
		}}
		?>
        
	</table>
    <?php if(!isset($_GET['cours']) || $_GET['cours'] == "Cours"){?>
        <h1 style="color:red" class="textCenter">Veuillez selectionner un cours</h1>
    <?php } ?>
</div>



<?php
include('includes/bas.inc.php');
}else{
    header('Location: login.php');  
}
?>