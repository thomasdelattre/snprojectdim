<?php
include ('includes/connexion.inc.php');
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
	<h1 class=" titreIndex">Bonjour M / Mme <?php echo "..."?></h1>
	<button type="button" class="btn btn-primary" id="boutonAjoutClasse">Ajouter une &eacute;valuation</button>
	<div id="comboEvaluation">
        <form action="evaluations.php" method="get">
            <select onchange="this.form.submit()" name="classe" class="btn btn-default fullWidth">
				<option>Classes</option>
                <?php 
                $query="SELECT * FROM cours";
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



<div class="tableauEvaluations row" >
	 <table style="font-size: 1.2em">
		<tr>
			<th>Nom pr&eacute;nom</th>
			<?php 
			$query="SELECT libelle FROM competence";
			$stmt=$pdo->query($query);
            $nbreC=0;
             $comp=array();
			while ($data = $stmt->fetch()) {
                $comp[$nbreC]=$data['libelle'];
                $nbreC++;
               
                
				?>
                
				<th><?php echo $data['libelle'] ?></th>
				<?php
			}
			?>
		</tr>
		<?php 
		//$query="SELECT etudiant.nom as nomE, etudiant.prenom as prenomE, note FROM competence INNER JOIN notes ON notes.idC=competence.idC INNER JOIN etudiant ON etudiant.idE=notes.idE";
         if(isset($_GET['classe'])){
             $query="SELECT * FROM etudiant INNER JOIN appartenir ON etudiant.idE=appartenir.idE WHERE idC='".$_GET['classe']."' ORDER BY nom";
         }
         else{
             $query="SELECT * FROM etudiant ORDER BY nom";
         }
		
		
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?php echo $data['nom']." ".$data['prenom'] ?></td>
				<?php 
				$queryN="SELECT * FROM notes INNER JOIN competence ON notes.idC=competence.idC WHERE idE='".$data['idE']."'";
				$stmtN=$pdo->query($queryN);
                $i=0;
                $notes=array();
                $libelle=array();
				while ($dataN = $stmtN->fetch()) {
                    $notes[$i]=$dataN['note'];
                    $libelle[$i]=$dataN['libelle'];
                   
                    $i++;
				}
            
                
            
                for($n=0;$n<$nbreC;$n++){ 
                $vide=false;
                ?>
                    <td>
                        
                    <?php
                        for($u=0;$u<$nbreC;$u++){ 
                        if(isset($libelle[$u]) && $libelle[$u]==$comp[$n]){
					?>
					   
                            <?php echo $notes[$u];$vide=true; ?> 
                        
					<?php
                        }
                        
                        }
                        if($vide==false){echo "-";$vide=true;}
                        ?>
                    </td>
                <?php
                    }
                
                
                ?> 
			</tr>
         
			<?php
		}
		?>
	</table> 
    
     
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