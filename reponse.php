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
    <?php include "menu.php"; ?>
    <section class="resultats">
        <h1>Résultat du QCM de
            <span class="change_color"><?=$_SESSION['name']?></span>
        </h1>
        <?php
            include "connect.php";
            $note = 0;
            foreach($_POST as $cle=>$val) {
                // $cle représente idq (identificant de la question) et $val représente idr (identifiant de sa réponse)
                // Cette requête nous permet d'afficher la bonne réponse
                $req_bonne_reponse = "SELECT * FROM reponses WHERE idr = $val AND verite = 1";
                // Exécution
                $res_bonne_reponse = mysqli_query($mysqli, $req_bonne_reponse);
                if(mysqli_num_rows($res_bonne_reponse) > 0) {
                    // Si cette requête retourne un nombre de lignes > 0 on ajoute 4 à la note
                    $note = $note + 4;
                } else {
                    ?>
                     <p class="color">Tu t'es trompé à la question <?=$cle?> :</p>
                        <?php
                        // Liste des questions qui ont été mal répondues
                        $req_question_mal_repondue = "SELECT * FROM questions WHERE idq = $cle";
                        $res_question_mal_repondue = mysqli_query($mysqli,$req_question_mal_repondue);
                        $ligne_question_mal_repondue = mysqli_fetch_assoc($res_question_mal_repondue);
                        ?>
                     <p class="question_error"><?=$ligne_question_mal_repondue['libelleQ']?></p>
                     <p class="color">Il fallait répondre :</p>
                        <?php
                        // Liste des vraies réponses
                        $req_vraie_reponse = "SELECT * FROM reponses WHERE idq = $cle AND verite = 1";
                        $res_vraie_reponse = mysqli_query($mysqli,$req_vraie_reponse);
                        $ligne_vraie_reponse = mysqli_fetch_assoc($res_vraie_reponse);
                        ?>
                        <p class="reponse_vrai"><?=$ligne_vraie_reponse['libeller']?></p>
                    <?php
                }
            }
        ?>
        <?php
            // Changer la couleur de la note
            if($note < 10) {
                echo "<style>.valeur_note{color:red;}</style>";
            } else if ($note == 10) {
                echo "<style>.valeur_note{color:orange}</style>";
            } else {
                echo "<style>.valeur_note{color:green}</style>";
            }
        ?>
        <p class="note">Tu as eu <span class="valeur_note"><?=$note?>/20 !</span></p>
    </section>
</body>
</html>