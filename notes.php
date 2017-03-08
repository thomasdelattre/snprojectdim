<?php
include('includes/connexion.inc.php');
include('includes/haut.inc.php');
$nbNote=0;
?>
<div class="tableauEvaluations row" >
    <div id="comboEvaluation">
        <form action="notes.php" method="get">
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
    
    <form method="post" action="traitement/ajoutNotes.php">
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
         
		
		
		$stmt=$pdo->query($query);
		while ($data = $stmt->fetch()) {
			?>
			<tr>
				<td height="60px" class="marginPaddingNull"><?php echo $data['nom']." ".$data['prenom'] ?></td>
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
                
                    <td height="50px" class="marginPaddingNull">
                        
                    <?php
                        for($u=0;$u<$nbreC;$u++){ 
                        if(isset($libelle[$u]) && $libelle[$u]==$comp[$n]){
					?>
					   
                        <input name="updateNotes[note<?=$nbNote ?>]" class="inputTableau fullWidth fullHeight textCenter" type="text" maxlength="2" class="textCenter" value="<?=$notes[$u]?>" /> 
                         <input name="updateEtudiant[note<?=$nbNote ?>]" type="hidden" value="<?=$data['idE'] ?>"/>
                        <input name="updateCompetence[note<?=$nbNote ?>]" type="hidden" value="<?=$comp[$n] ?>"/>
                        <?php
                        $vide=true; 
                        }
                        
                        }
                    if($vide==false){?>
                        <input name="insertNotes[note<?=$nbNote ?>]" class="inputTableau fullWidth fullHeight textCenter" maxlength="2" class="textCenter" type="text"/>
                        <input name="insertEtudiant[note<?=$nbNote ?>]" type="hidden" value="<?=$data['idE'] ?>"/>
                        <input name="insertCompetence[note<?=$nbNote ?>]" type="hidden" value="<?=$comp[$n] ?>"/>
                        <?php ;$vide=true;}
                        ?>
                    </td>
                
                <?php
                    $nbNote++;
                    }
                
                
                ?> 
			</tr>
         
			<?php
		}}
		?>
	</table> 
    <input type="submit" id="boutonAjoutClasse" class="btn btn-success" value="Evaluer"/>
    </form>
</div>


<?php
include('includes/bas.inc.php');
?>