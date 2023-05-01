<?php
    // START THE SESSION
    session_start();
    // CHECK IF THE FORM HAS BEEN SUBMITTED
    if(isset($_POST['button'])){
        if(isset($_POST['name']) && $_POST['name'] != ""){
            // Créer une variable session qui va stocker le pseudo
            $_SESSION['name'] = $_POST['name'];
            // Redirection vers la page de QCM
            header('location:qcm.php');
        } else {
            $error = "Veuillez choisir un pseudo !";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-store"/>
    <title>Pseudo page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Inclusion du menu dans toutes les pages -->
    <?php include "menu.php" ?>
    <!-- Corps de la page -->
    <section class="pseudo">
        <form action="index.php" method="POST">
            <p class="error">
                <?php
                    if(isset($error)) echo $error;
                ?>
            </p>
            <label>Entrez votre pseudo</label>
            <!-- Affichage de la variable pseudo si celle-ci existe -->
            <input type="text" name="name" placeholder="Ex : Thibaut"
            value="<?php if(isset($_SESSION['name'])) echo $_SESSION['name'] ?>">
            <button class="style_btn" name="button">Soumettre</button>
        </form>
    </section>
</body>
</html>