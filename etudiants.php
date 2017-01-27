<?php
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
	<h1 class=" titreIndex">Bonjour M / Mme <?php echo "..."?></h1>
	<!-- data-backdrop="false" sur <a> pr probleme de modal -->
	<a id="boutonAjoutClasse"  class="btn btn-primary" data-toggle="modal" data-target="#modalAjoutEtudiant">Ajouter un &eacute;tudiant</a>
	<div id="comboEvaluation">
		<div>
			<select class="btn btn-default">
				<option>Classes</option>
				<?php for($i=0;$i<10;$i++){ ?>
				<option value="PA"><?php echo "Classe ".($i+1); ?></option>
				<?php } ?>
			</select>
		</div>
	
		
	</div>

</div>

<!-- Modal contenant l'ajout d'une classe -->
<div class="modal fade" id="modalAjoutEtudiant" role="dialog">
	<div class="modal-dialog">

		<div class="modal-content">
			<div class="modal-header">
				<!-- Entete du modal -->
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" style="text-align: center;">Ajout d'un &eacute;tudiant</h4>
			</div>
			<form action="" id="formInscription" method="post">
				<div class="modal-body" style="text-align: left; font-size: 1.1em">
					<!-- Formulaire d'inscription avec le nom, prénom, pseudo, email et mot de passe -->

					<div class="form-group">
						<label for="exampleInputEmail1">Nom</label>
						<input type="text" id="nom" class="form-control" name="nomClasse" required placeholder="">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Pr&eacute;nom</label>
						<input type="text" id="prenom" class="form-control" name="description" required placeholder=""></input>
					</div>

				</div>
				<div class="modal-footer">
					<button class="btn btn-success" type="submit">Ajouter cet &eacute;tudiant</button>

					<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
				</div>
			</form>
		</div>

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
		//insérer boucle avec requete
		for($i=0;$i<10;$i++){
			?>
			<tr>
				<td><?php echo "Num ".$i;//inserer valeurs ?></td>
				<td><?php echo "nom ".$i;//inserer valeurs ?></td>
				<td><?php echo "prenom ".$i;//inserer valeurs ?></td>
			</tr>
			<?php
		}
		//insérer fin de boucle
		?>
	</table>
	<form>
		<button type="button" class="btn btn-primary" id="boutonAjoutClasse">Evaluer</button>
	</form>
</div>
<!-- Div contenant la pagination-->
<div class="divPagination">
	<nav aria-label="Page navigation">
		<ul class="pagination pagination-lg ">

			<!-- Si l'utilisateur n'est pas sur la premiere page, affiche le bouton de page precedente-->
			<?php //if(isset($_GET['page']) && $_GET['page']!=1){ ?>
			<li>
				<a href="index.php?page=<?php //echo $_GET['page']-1 ?>" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<?php //} ?>


			<?php 
			//on recupere le nombre de message afin de calculer le nombre de pages
			//$query = 'SELECT count(id) AS nbreId FROM messages'; 
			//$stmt=$pdo->query($query);
			//while ($data = $stmt->fetch()) {
			//	$nbreMessages=$data['nbreId'];
			//}

			//$nbrePages=($nbreMessages) ? ceil($nbreMessages/$mpp) : 1;

			//on crée un bouton pour chaque page présente
			//for($i=0;$i<$nbrePages;$i++){
			?>
			<li><a href="index.php?page=<?php //echo $i+1 ?>">  1 <!-- <?= $i+1 ?> -->  </a></li>
			<?php //} ?>

			<!-- Si l'utilisateur n'est pas sur la derniere page, affiche le bouton de page suivante -->
			<?php 
				//if(!isset($_GET['page']) || $_GET['page']<$nbrePages){ 
				//if($nbreMessages>$mpp){?>
				<li>
					<!-- balise a du bouton suivant qui renvoie a la page 2 si le numero de page n'est pas encore defini, et a la page suivante si le numero de page est defini -->
					<a href="index.php?page=<?php 
						//if(isset($_GET['page']) && $_GET['page']!=1){
						//	echo $_GET['page']+1;
						//}else{
						//	echo 2;
						//} ?>" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
				<?php //} } ?>
			</ul>
		</nav>
	</div>




	<?php
	include('includes/bas.inc.php');
	?>