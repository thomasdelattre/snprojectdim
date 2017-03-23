<?php
include ('includes/connexion.inc.php');
if($connecterEtu==true){
include('includes/haut.inc.etu.php');

?>

<div class="row" id="headerPage">
	<h1 class=" titreIndex">Bonjour M / Mme <?php echo "..."?></h1>
	<div id="comboEvaluation">
        <form action="indexEtu.php" method="get">
            <select onchange="this.form.submit()" name="cours" class="btn btn-default fullWidth">
				<option>Classes</option>
                <?php 
                $query="SELECT cours.libelle as libelleCours, cours.idC as idC FROM cours 
                INNER JOIN contenir ON contenir.idCours=cours.idC 
                INNER JOIN classe ON classe.idClasse=contenir.idClasse 
                INNER JOIN appartenir ON appartenir.idC=classe.idClasse
                WHERE appartenir.idE='".$idE."'";
                $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                ?>
                 <?php if($data['idC']==$_GET['cours']) {?>
                <option value="<?= $data['idC'] ?>" selected><?= $data['libelleCours'] ?></option>
                <?php }else { ?> 
                <option value="<?= $data['idC'] ?>"><?= $data['libelleCours'] ?></option>
                
                <?php } }?>
			</select>
		</form>
	</div>
</div>


<?php if(isset($_GET['cours'])){ ?>
<div class="tableauEvaluations row" >
	 <table style="font-size: 1.2em">
		<tr>
			<th>Nom pr&eacute;nom</th>
			<?php 
			$query="SELECT competence.libelle as libelleC FROM competence INNER JOIN appliquer ON appliquer.idComp=competence.idC INNER JOIN cours ON cours.idC=appliquer.idCours WHERE cours.idC='".$_GET['cours']."'";
			$stmt=$pdo->query($query);
            $nbreC=0;
             $comp=array();
			while ($data = $stmt->fetch()) {
                $comp[$nbreC]=$data['libelleC'];
                $nbreC++;
               
                
				?>
                
				<th><?php echo $data['libelleC'];  ?></th>
				<?php
			}
			?>
		</tr>
		<?php 
         if(isset($_GET['classe'])){
             $query="SELECT * FROM etudiant INNER JOIN appartenir ON etudiant.idE=appartenir.idE WHERE idC='".$_GET['cours']."' and etudiant.idE='".$idE."' ORDER BY nom";
         }
         else{
             $query="SELECT * FROM etudiant where idE = $idE ORDER BY nom";
         }
		
		
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?php echo $data['nom']." ".$data['prenom'] ?></td>
				<?php 
				$queryN="SELECT * FROM notes INNER JOIN competence ON notes.idC=competence.idC INNER JOIN appliquer ON appliquer.idComp=competence.idC WHERE appliquer.idCours='".$_GET['cours']."' AND idE=$idE";
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
<?php }else{ ?>
<h1 style="color:red" class="textCenter">Veuillez selectionner un cours</h1>
<?php } ?>

	<?php
	include('includes/bas.inc.php');
}else{
    header('Location: login.php');   
}
	?>