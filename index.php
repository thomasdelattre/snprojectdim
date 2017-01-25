<?php
include('includes/haut.inc.php');
?>

<div >
	<h1 class=" titreIndex">Bonjour M / Mme <?php echo "..."?></h1>
	<h3 class=" titreIndex">Derni&egrave;res &eacute;valuations not&eacute;es :</h3>
</div>
<div class="tableauEvaluations">
	<table>
		<tr>
			<th>Date</th>
			<th>Classe</th>
			<th>Evaluation</th>
		</tr>
		<?php 
		//insérer boucle avec requete
		for($i=0;$i<10;$i++){
			?>
			<tr>
				<td><?php echo "Date ".$i;//inserer valeurs ?></td>
				<td><?php echo "Classe ".$i;//inserer valeurs ?></td>
				<td><?php echo "Evaluation ".$i;//inserer valeurs ?></td>	
			</tr>
			<?php
		}
		//insérer fin de boucle
		?>
	</table>
</div>



<?php
include('includes/bas.inc.php');
?>