<div style="display:flex;flex-direction:row" >
    <form action="traitement/ajoutEtudiant.php" method="post" style="width:50%">
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
                <label>Classes</label>
            </td>
            <td>
                         <div class="button-group" style="position: relative; top:0;">
                            <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="width:100%;">
                                <span style="float:left;font-size:1.3em">Classes</span> 
                                <span style="float:right;margin-top:6px;" class="caret"></span>
                             </button>

                            <ul style="width:100%" class="dropdown-menu">

                                <?php 
                                $query="SELECT * FROM classe WHERE idP=$idP";
                                $stmt=$pdo->query($query);
                                  while ($data = $stmt->fetch()) {
                                ?>
                                <li><a href="#" class="small" tabIndex="-1"><input name="classe[]" value="<?= $data['idClasse'] ?>" type="checkbox" />&nbsp;<?= $data['libelle'] ?></a></li>
                                <?php } ?>
                            </ul>
                        </div>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" class="btn btn-success" />
            </td>
        </tr>
    </table>
    </form>
    <form style="width:50%" action="traitement/supprEtudiant.php" method="post">
        <H1>Supprimer un étudiant</H1>
        <div class="button-group" style="position: relative; top:0; width:30%">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="width:100%;">
                            <span style="float:left;font-size:1.3em">Etudiants</span> 
                            <span style="float:right;margin-top:6px;" class="caret"></span>
                         </button>
                         
                        <ul style="width:100%" class="dropdown-menu">
                          
                            <?php 
                            $query="SELECT * FROM etudiant INNER JOIN appartenir ON appartenir.idE=etudiant.idE INNER JOIN classe ON appartenir.idC=classe.idClasse WHERE idP=$idP";
                            $stmt=$pdo->query($query);
                              while ($data = $stmt->fetch()) {
                            ?>
                            <li><a href="#" class="small" tabIndex="-1"><input name="etudiants[]" value="<?= $data['idE'] ?>" type="checkbox"/>&nbsp;<?= $data['nom']." ".$data['prenom'] ?></a></li>
                            <?php } ?>
                        </ul>
            </div>
            <input type="submit" class="btn btn-danger" value="Supprimer" />

    </form>
</div>