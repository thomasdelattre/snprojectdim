<?php
include('includes/connexion.inc.php');
include('includes/haut.inc.php');
$nbNote=0;
?>
<div class="tableauEvaluations row" >
    <div id="comboEvaluation">
        <form action="notes.php"  method="get" style="display:flex;flex-direction:row">
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
        <form action="notes.php" onchange="this.form.submit()" method="get" >
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
    <?php if(isset($_GET['cours'])){ ?>
    <form method="post" action="traitement/ajoutNotes.php">
	 <table style="font-size: 1.2em">
		<tr>
			<th>Nom pr&eacute;nom</th>
            <?php if(isset($_GET['classe'])){?>
			<?php 
            $query="SELECT competence.libelle as libelleC FROM competence INNER JOIN appliquer ON appliquer.idComp=competence.idC WHERE appliquer.idCours='".$_GET['cours']."' AND competence.idP=$idP";
			$stmt=$pdo->query($query);
            $nbreC=0;
             $comp=array();
			while ($data = $stmt->fetch()) {
                $comp[$nbreC]=$data['libelleC'];
                $nbreC++;
               
                
				?>
                
				<th><?php echo $data['libelleC'] ?></th>
				<?php
			}
			?>
             <?php } ?>
		</tr>
		<?php 
		//$query="SELECT etudiant.nom as nomE, etudiant.prenom as prenomE, note FROM competence INNER JOIN notes ON notes.idC=competence.idC INNER JOIN etudiant ON etudiant.idE=notes.idE";
		 if(isset($_GET['classe'])){
             $query="SELECT * FROM etudiant 
             INNER JOIN appartenir ON etudiant.idE=appartenir.idE 
             INNER JOIN classe ON classe.idClasse=appartenir.idC 
             INNER JOIN contenir ON contenir.idClasse = classe.idClasse
             INNER JOIN cours ON contenir.idCours=cours.idC
             WHERE classe.idClasse='".$_GET['classe']."' AND cours.idC='".$_GET['cours']."' ORDER BY nom";
         
		
		
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
   <?php }else if(!isset($_GET['classe'])){ ?>
        <h1 style="color:red" class="textCenter">Veuillez selectionner une classe</h1>
    <?php }else if(!isset($_GET['cours'])){ ?>
        <h1 style="color:red" class="textCenter">Veuillez selectionner un cours</h1>
    <?php } ?>
</div>


<?php
include('includes/bas.inc.php');
?>