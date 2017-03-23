<?php
include ('includes/connexion.inc.php');
if($connecterP==true){
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
	<h2 class=" titreIndex">Bonjour M / Mme <?=$nomP." ".$prenomP?></h2>
	<a id="boutonAjoutClasse" class="btn btn-primary" href="administration.php">Ajouter un cours</a>
    <div id="comboEvaluation">
        <form action="cours.php" method="get">
            <select onchange="this.form.submit()" name="classe" class="btn btn-default fullWidth">
				<option>Classe</option>
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
			<th width="30%">Cours</th>
			<th width="50%">Description</th>
		</tr>
		<?php 
         if(isset($_GET['classe'])){      
             $query="SELECT idC, libelle, description FROM cours INNER JOIN contenir ON cours.idC=contenir.idCours WHERE idClasse='".$_GET['classe']."' AND idP=$idP";
       
		
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?= $data['libelle'] ?></td>
				<td><?= $data['description'] ?></td>	
			</tr>
			<?php
		}}
		?>
	</table>
    <?php if(!isset($_GET['classe']) || $_GET['classe']=="Classe"){?>
    <div>
        <H1 style="color:red" class="textCenter">Veuillez choisir une classe</H1>
    </div>
    <?php } ?>
</div>



<?php
include('includes/bas.inc.php');
}else{
    header('Location: login.php');  
}
?>