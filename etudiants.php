<?php
include ('includes/connexion.inc.php');
if($connecterP==true){
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
	<h2 class=" titreIndex">Bonjour M / Mme <?=$nomP." ".$prenomP?></h2>
	<!-- data-backdrop="false" sur <a> pr probleme de modal -->
	<a id="boutonAjoutClasse"  class="btn btn-primary" href="administration.php">Ajouter un &eacute;tudiant</a>
	<div id="comboEvaluation">
		<form action="etudiants.php" method="get">
            <label>Classe</label>
            <select onchange="this.form.submit()" name="classe" class="btn btn-default fullWidth">
				<option>Classes</option>
                <?php 
                $query="SELECT * FROM classe WHERE idP=$idP";
                $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                ?>
                 <?php if($data['idClasse']==$_GET['classe']) {?>
                <option value="<?= $data['idClasse'] ?>" selected><?= $data['libelle'] ?></option>
                <?php }else { ?> 
                <option value="<?= $data['idClasse'] ?>"><?= $data['libelle'] ?></option>
                
                <?php } }?>
			</select>
		</form>

		
	</div>

</div>

<div class="tableauEvaluations row">
	<table>
		<tr>
			<th width="20%">Num&eacute;ro &eacute;tudiant</th>
			<th width="40%">Nom</th>
			<th width="40%">Pr&eacute;nom</th>
		</tr>
		<?php 
        if(isset($_GET['classe'])){
		  $query="SELECT * FROM etudiant inner join appartenir on appartenir.idE= etudiant.idE inner join classe on classe.idClasse=appartenir.idC where classe.idClasse='".$_GET['classe']."'";
        
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?= $data['idE'] ?></td>
				<td><?= $data['nom'] ?></td>
				<td><?= $data['prenom'] ?></td>	
			</tr>
			<?php
		}
        }
		?>
	</table>
    <?php if(!isset($_GET['classe']) || $_GET['classe'] == "Classes"){?>
        <h1 style="color:red" class="textCenter">Veuillez selectionner une classe</h1>
    <?php } ?>
</div>  




	<?php
	include('includes/bas.inc.php');
}else{
    header('Location: login.php');  
}
	?>