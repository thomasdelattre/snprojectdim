<?php
include ('includes/connexion.inc.php');
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
    <h2 class=" titreIndex">Bonjour M / Mme <?=$nomP." ".$prenomP?></h2>
	<a id="boutonAjoutClasse" class="btn btn-primary" href="administration.php">Ajouter une comp&eacute;tence</a>
    <div id="comboEvaluation">
        <form action="competences.php" method="get">
            <select onchange="this.form.submit()" name="classe" class="btn btn-default fullWidth">
				<option>Cours</option>
                <?php 
                
                    $query="SELECT * FROM cours WHERE idP=$idP";
                
                $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                ?>
                 <?php if($data['idC']==$_GET['classe']) {?>
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
		//$query="SELECT competence.libelle as libelleComp, coef FROM competence INNER JOIN prof ON competence.idP=prof.idP INNER JOIN cours ON cours.idP=prof.idP WHERE cours.idC='".$_GET['classe']."'";
        if(isset($_GET['classe'])){      
            $query="SELECT competence.libelle as libelleComp, coef FROM competence INNER JOIN prof ON competence.idP=prof.idP INNER JOIN appliquer ON competence.idC=appliquer.idComp WHERE idCours='".$_GET['classe']."' AND competence.idP=$idP";
        }
        else{
            $query="SELECT competence.libelle as libelleComp, coef FROM competence INNER JOIN prof ON competence.idP=prof.idP WHERE competence.idP=$idP";
        }
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?= $data['libelleComp'] ?></td>
				<td><?= $data['coef'] ?></td>	
			</tr>
			<?php
		}
		//insérer fin de boucle
		?>
	</table>
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
</div>



<?php
include('includes/bas.inc.php');
?>