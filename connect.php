<?php
    // Connexion à la base de données
    $mysqli = mysqli_connect("localhost","root","root","quizz");
    if(!$mysqli) echo "La connexion a échouée";
?>