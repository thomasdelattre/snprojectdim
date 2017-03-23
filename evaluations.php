<?php
include ('includes/connexion.inc.php');
if($connecterP==true){
include('includes/haut.inc.php');
?>

<div class="row" id="headerPage">
	<h2 class=" titreIndex">Bonjour M / Mme <?=$nomP." ".$prenomP?></h2>
	<a type="button" class="btn btn-primary" id="boutonAjoutClasse" href="notes.php">Ajouter une &eacute;valuation</a>
	<div id="comboEvaluation">
        <form action="evaluations.php"  method="get" style="display:flex;flex-direction:row">
            <select name="classe" onchange="this.form.submit()" class="btn btn-default fullWidth">
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
        <?php if(isset($_GET['classe'])){ ?>
        <form action="evaluations.php" onchange="this.form.submit()" method="get" >
            <input type="hidden" name="classe" value="<?=$_GET['classe'] ?>" />
            <select name="cours" onchange="this.form.submit()" class="btn btn-default fullWidth">
				<option>Cours</option>
                <?php 
                
                    $query="SELECT * FROM cours INNER JOIN contenir ON cours.idC=contenir.idCours WHERE contenir.idClasse='".$_GET['classe']."' AND idP=$idP";
                
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
        <?php } ?>
	</div>
</div>



<div class="tableauEvaluations row" >
     <?php if(isset($_GET['cours'])){ 
    $notesClasse=array();
   
    ?>
	 <table style="font-size: 1.2em">
		<tr>
			<th>Nom pr&eacute;nom</th>
			<?php 
            if(isset($_GET['cours'])){
                    $query="SELECT * FROM competence INNER JOIN appliquer ON appliquer.idComp=competence.idC WHERE appliquer.idCours='".$_GET['cours']."' AND competence.idP=$idP";
                
			$stmt=$pdo->query($query);
            $nbreC=0;
             $comp=array();
			while ($data = $stmt->fetch()) {
                $comp[$nbreC]=$data['libelle'];
                $nbreC++;
               
                
				?>
                
				<th><?php echo $data['libelle'];  ?></th>
				<?php
			}
            }
			?>
            <th>Moyenne générale</th>
		</tr>
		<?php 
         if(isset($_GET['cours'])){
             $query="SELECT * FROM etudiant 
             INNER JOIN appartenir ON etudiant.idE=appartenir.idE 
             INNER JOIN classe ON classe.idClasse=appartenir.idC
             INNER JOIN contenir ON contenir.idClasse=classe.idClasse
             WHERE classe.idClasse='".$_GET['classe']."' 
             AND contenir.idCours='".$_GET['cours']."'
             ORDER BY nom";
         
         
		
		
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td><?php echo $data['nom']." ".$data['prenom'] ?></td>
				<?php 
				$queryN="SELECT * FROM notes 
                INNER JOIN competence ON notes.idC=competence.idC 
                INNER JOIN appliquer ON competence.idC=appliquer.idComp
                WHERE idE='".$data['idE']."'
                AND appliquer.idCours='".$_GET['cours']."'";
				$stmtN=$pdo->query($queryN);
                $i=0;
                $notes=array();
                $libelle=array();
				while ($dataN = $stmtN->fetch()) {
                    $notes[$i]=$dataN['note'];
                    $coef[$i]=$dataN['coef'];
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
                $moyenne=0;
                $nbreNotes=0;
                $coefTotal=0;
                foreach($notes as $key => $note){
                    $nbreNotes++;
                    if($note=="vv"){
                        
                        $moyenne=$moyenne+4*$coef[$key];
                    }   
                    else if($note=="v"){
                         $moyenne=$moyenne+3*$coef[$key];
                    }
                    else if($note=="r"){
                         $moyenne=$moyenne+2*$coef[$key];
                    }
                    else if($note=="rr"){
                         $moyenne=$moyenne+1*$coef[$key];
                    }
                    $coefTotal+=$coef[$key];
                }
                if($nbreNotes==0){
                    $moyenne="-";
                }
                else{
                    $moyenne=($moyenne/$coefTotal)*5;
                    array_push($notesClasse,$moyenne);
                }
                ?> 
                <td><?php if($nbreNotes!=0){echo number_format($moyenne, 2);}else{echo $moyenne;}?></td>
			</tr>
            
			<?php
		}
         }
                $moyenneClasse=0;
                $nbreNoteM=0;
                foreach($notesClasse as $noteC){
                    $nbreNoteM++;
                    $moyenneClasse+=$noteC;
                }
                if($nbreNoteM!=0){
                    $moyenneClasse=$moyenneClasse/$nbreNoteM;
                }
		?>
         <tr>
             <td colspan="<?= $nbreC+2 ?>"><?php if($nbreNoteM!=0){echo "Moyenne générale de la classe : ".number_format($moyenneClasse, 2);}else{echo "Pas encore de notes pour cette classe";}?></td>
         </tr>
	</table> 
    <?php }else if(!isset($_GET['classe'])){ ?>
        <h1 style="color:red" class="textCenter">Veuillez selectionner une classe</h1>
    <?php }else if(!isset($_GET['cours'])){ ?>
        <h1 style="color:red" class="textCenter">Veuillez selectionner un cours</h1>
    <?php } ?>
     
</div>




	<?php
	include('includes/bas.inc.php');
}else{
    header('Location: login.php');  
}
	?>