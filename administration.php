<?php
include ('includes/connexion.inc.php');
include('includes/haut.inc.php');
?>

<H1 class="textCenter">Ajouter une classe</H1>
<form action="traitement/ajoutClasse.php" method="post">
<table id="ajoutAdmin">
    <tr>
        <td width="40%">
            <label >Nom de la classe</label>
        </td>
        <td>
            <input name="nom" class="fullWidth" type="text" placeholder="Nom de la classe">
        </td>
    </tr>
    <tr>
        <td>
            <label>Description</label>
        </td>
        <td>
            <textarea name="description" class="fullWidth" placeholder="Description"></textarea>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" class="btn btn-success" />
        </td>
    </tr>
</table>
</form>

<form action="traitement/ajoutCompetence.php" method="post">
<H1 class="textCenter">Ajouter une Compétence</H1>
<table id="ajoutAdmin">
    <tr>
        <td width="40%">
            <label>Nom de la compétence</label>
        </td>
        <td>
           <input name="nom" class="fullWidth" type="text" placeholder="Nom de la compétence"/>
        </td>
    </tr>
    <tr>
        <td>
            <label>Coefficient</label>
        </td>
        <td>
            <input name="coef" class="fullWidth" type="number" min="1" value="1"/>
        </td>
    </tr>
    <tr>
        <td>
            <label>Classe</label>
        </td>
        <td>
            <select name="classe" class="btn btn-default fullWidth">
				<option>Classes</option>
                <?php 
                $query="SELECT * FROM cours";
                $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                ?>
                <option value="<?= $data['idC'] ?>"><?= $data['libelle'] ?></option>
                
                <?php } ?>
			</select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" class="btn btn-success" />
        </td>
    </tr>
</table>
</form>

<form action="traitement/ajoutEtudiant.php" method="post">
<H1 class="textCenter">Ajouter un étudiant</H1>
<table id="ajoutAdmin">
    <tr>
        <td width="40%">
            <label>Nom</label>
        </td>
        <td>
           <input name="nom" class="fullWidth" type="text" placeholder="Nom"/>
        </td>
    </tr>
    <tr>
        <td>
            <label>Prénom</label>
        </td>
        <td>
            <input name="prenom" class="fullWidth" type="text" placeholder="Prénom"/>
        </td>
    </tr>
     <tr>
        <td>
            <label>Classe</label>
        </td>
        <td>
            <select name="classe" class="btn btn-default fullWidth">
				<option>Classes</option>
                <?php 
                $query="SELECT * FROM cours";
                $stmt=$pdo->query($query);
		          while ($data = $stmt->fetch()) {
                ?>
                <option value="<?= $data['idC'] ?>"><?= $data['libelle'] ?></option>
                
                <?php } ?>
			</select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" class="btn btn-success" />
        </td>
    </tr>
</table>
</form>

<?php
include('includes/bas.inc.php');
?>