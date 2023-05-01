<?php
    // Connexion à la base de données
    $mysqli = mysqli_connect("localhost","root","root","quizz");
    mysqli_query($mysqli,"SET NAMES UTF8");
    if(!$mysqli) echo "La connexion a échouée";
?>