<?php
include ('includes/connexion.inc.php');
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
	<h1 class=" titreIndex">Bonjour M / Mme <?php echo "..."?></h1>
	<button type="button" class="btn btn-primary" id="boutonAjoutClasse">Ajouter une &eacute;valuation</button>
	<div id="comboEvaluation">
		<div>
			<select class="btn btn-default">
				<option>Classes</option>
				<?php for($i=0;$i<10;$i++){ ?>
				<option value="PA"><?php echo "Classe ".($i+1); ?></option>
				<?php } ?>
			</select>
		</div>
		<div>
			<select class="btn btn-default">
				<option>Evaluations</option>
				<?php for($i=0;$i<10;$i++){ ?>
				<option value="PA"><?php echo "Evaluations ".($i+1); ?></option>
				<?php } ?>
			</select>
		</div>
		
		
	</div>
</div>



<div class="tableauEvaluations row">
	 <!-- <table style="font-size: 1.2em">
		<tr>
			<th>Nom pr&eacute;nom</th>
			<?php 
			$query="SELECT libelle FROM competence";
			$stmt=$pdo->query($query);
            $nbreC=0;
			while ($data = $stmt->fetch()) {
                $nbreC++;
				?>
                
				<th><?php echo $data['libelle'] ?></th>
				<?php
			}
			?>
		</tr>
		<?php 
		//$query="SELECT etudiant.nom as nomE, etudiant.prenom as prenomE, note FROM competence INNER JOIN notes ON notes.idC=competence.idC INNER JOIN etudiant ON etudiant.idE=notes.idE";
		$query="SELECT * FROM etudiant";
		
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?php echo $data['nom']." ".$data['prenom'] ?></td>
				<?php 
				$queryN="SELECT note, competence.libelle FROM notes INNER JOIN etudiant ON etudiant.idE=notes.idE INNER JOIN competence ON competence.idC=notes.idC WHERE etudiant.idE='".$data['idE']."'";
				$stmtN=$pdo->query($queryN);
                for($i=0;$i<$nbreC;$i++){
				if ($dataN = $stmtN->fetch()) {
					?>
					<td><?php echo $dataN['note'].$dataN['libelle'] ?></td>
					<?php
				} else  {
				?>
				<td><?php echo "-"?></td>
                <?php }} ?>
			</tr>
         
			<?php
		}
		?>
	</table> 
    <?php 
    
    ?>-->
    
     <table>
        <tr>
            <td>
                <table>
                <tr>
                    <td>
                        Nom prénom
                    </td>
                </tr>
                    <?php
                    $queryN="SELECT * FROM etudiant ORDER BY nom";
                    $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                    ?>
                <tr>
                    <td>
                        <?= $data['nom']." ".$data['prenom'] ?>
                    </td>
                </tr>
                    <?php } ?>
                </table>
            </td>
           
                <?php 
                $queryC="SELECT * FROM competence";
                $stmt=$pdo->query($queryC);
		          while ($data = $stmt->fetch()) {
                ?>
             <td valign="top">
                 <table>
                     <tr>
                        <td><?= $data["libelle"] ?></td>
                     </tr>
                     <?php 
                      $queryN="SELECT * FROM notes WHERE idC='".$data["idC"]."'";
                      $stmtN=$pdo->query($queryN);
		          while ($dataN = $stmtN->fetch()) {
                     ?>
                     <tr>
                        <td><?= $dataN["note"] ?></td>
                     </tr>
                     <?php } ?>
                 </table>
            </td>
            <?php } ?>
        </tr>
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