<?php
    session_start();
    // Vérifier si la variable de session name existe
    if(!isset($_SESSION['name'])){
        header('location:index.php'); // Si le pseudo n'existe pas > redirection vers index.php
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat QCM</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include "menu.php" ?>
    <section class="resultats">
        <h1>Résultat du QCM de
            <span class="change_color"><?=$_SESSION['name']?></span>
        </h1>
        <p class="color">Tu t'es planté à la question 5 :</p>
        <p class="question_error">Combien font 2 + 5</p>
        <p class="color">Il fallait répondre</p>
        <p class="reponse_vrai">7</p>
        <p class="note">Tu as eu 14/20</p>
    </section>
</body>
</html>