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
    <section class="niveau">
        <h4>Bonjour
            <span class="change_color">ALICE</span> , choisissez d'abord
            le niveau des questions :
        </h4>
        <form method="POST">
            <p>Votre niveau actuel est :
                <span class="change_color">
                    Débutant
                </span>
            </p>
            <div class="choices">
                <div class="choice">
                    <input type="radio" name="niveau" value="0">Confirmé
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