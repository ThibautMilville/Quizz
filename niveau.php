<?php
    session_start();
    if(!isset($_SESSION['name'])) header('location:index.php');
    // Vérifier le formulaire relatif au niveau
    if(isset($_POST['button'])){
        // Vérification pour savoir si le niveau a été choisi
        if(isset($_POST['niveau'])){
            // Enregistrer le niveau dans une variable session
            $_SESSION['niveau'] = $_POST['niveau'];
            // Redirection vers la page QCM
            header('location:qcm.php');
        } else {
            $error = "Veuillez choisir un niveau !";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Niveau page</title>
</head>
<body>
    <?php include "menu.php" ?>
    <section class="niveau">
        <h4>Bonjour
            <span class="change_color"><?=$_SESSION['name'] ?></span> , choisissez d'abord
            le niveau des questions :
        </h4>
        <form action="niveau.php" method="POST">
            <p>Votre niveau actuel est :
                <span class="change_color">
                    <?php
                    // Afficher le niveau du joueur avec la session
                    if(isset($_SESSION['niveau'])){
                        // Si la session 'niveau' existe :
                        if($_SESSION['niveau'] == 1){
                            echo "Confirmé";
                        } else {
                            echo "Débutant";
                        }
                    } else {
                        echo "Aucun";
                    }
                    ?>
                </span>
            </p>
            <p class="error">
                <?php if(isset($error)) echo $error; ?>
            </p>
            <div class="choices">
                <div class="choice">
                    <input type="radio" name="niveau" value="0">Débutant
                </div>
                <div class="choice">
                    <input type="radio" name="niveau" value="1">Confirmé
                </div>
                <button name="button" class="style_btn">Soumettre</button>
            </div>
        </form>
    </section>
</body>
</html>