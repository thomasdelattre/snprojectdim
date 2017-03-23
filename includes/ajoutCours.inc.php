<div style="display:flex;flex-direction:row" >
    <form action="traitement/ajoutCours.php" method="post" style="width:50%">
    <H1 class="textCenter">Ajouter un cours</H1>
    <table id="ajoutAdmin">
        <tr>
            <td width="40%">
                <label >Nom du cours</label>
            </td>
            <td>
                <input name="nom" class="fullWidth" type="text" placeholder="Nom du cours">
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
                <label>Compétences</label>
            </td>
            <td>
                         <div class="button-group" style="position: relative; top:0;">
                            <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="width:100%;">
                                <span style="float:left;font-size:1.3em">Compétences</span> 
                                <span style="float:right;margin-top:6px;" class="caret"></span>
                             </button>

                            <ul style="width:100%" class="dropdown-menu">

                                <?php 
                                $query="SELECT * FROM competence WHERE idP=$idP";
                                $stmt=$pdo->query($query);
                                  while ($data = $stmt->fetch()) {
                                ?>
                                <li><a href="#" class="small" tabIndex="-1"><input name="competences[]" value="<?= $data['idC'] ?>" type="checkbox"/>&nbsp;<?= $data['libelle'] ?></a></li>
                                <?php } ?>
                            </ul>
                        </div>
            </td>
        </tr>
        <tr>
            <td>
                <label>Classe</label>
            </td>
            <td>
                         <div class="button-group" style="position: relative; top:0;">
                            <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="width:100%;">
                                <span style="float:left;font-size:1.3em">Classe</span> 
                                <span style="float:right;margin-top:6px;" class="caret"></span>
                             </button>

                            <ul style="width:100%" class="dropdown-menu">

                                <?php 
                                $query="SELECT * FROM classe WHERE idP=$idP";
                                $stmt=$pdo->query($query);
                                  while ($data = $stmt->fetch()) {
                                ?>
                                <li><a href="#" class="small" tabIndex="-1"><input name="classe[]" value="<?= $data['idClasse'] ?>" type="checkbox"/>&nbsp;<?= $data['libelle'] ?></a></li>
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
    <form style="width:50%" action="traitement/supprCours.php" method="post">
        <H1>Supprimer un cours</H1>
        </br>
        <div class="button-group" style="position: relative; top:0; width:30%">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="width:100%;">
                            <span style="float:left;font-size:1.3em">Cours</span> 
                            <span style="float:right;margin-top:6px;" class="caret"></span>
                         </button>
                         
                        <ul style="width:100%" class="dropdown-menu">
                          
                            <?php 
                            $query="SELECT * FROM cours WHERE idP=$idP";
                            $stmt=$pdo->query($query);
                              while ($data = $stmt->fetch()) {
                            ?>
                            <li><a href="#" class="small" tabIndex="-1"><input name="cours[]" value="<?= $data['idC'] ?>" type="checkbox"/>&nbsp;<?= $data['libelle'] ?></a></li>
                            <?php } ?>
                        </ul>
            </div>
            </br>
            <input type="submit" class="btn btn-danger" value="Supprimer" />

    </form>
</div>