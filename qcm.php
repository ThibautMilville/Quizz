<?php
session_start();
// Vérifier si les variables de session name et niveau existent
if (!isset($_SESSION['name'])) {
	header('location:index.php'); // Si le pseudo n'existe pas > redirection vers index.php
}
if (!isset($_SESSION['niveau'])) {
	header('location:niveau.php'); // Si le niveau n'existe pas > redirection vers niveau.php
}
$niveau = $_SESSION['niveau'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>QCM - Quizz</title>
	<link rel="stylesheet" href="style.css">
</head>

<body>
	<?php include "menu.php" ?>
	<?php include "connect.php" ?>
	<section class="qcm">
		<form action="reponse.php" method="POST">
			<?php
			// IF THE PLAYER LEVEL IS 0
			if ($_SESSION['niveau'] == 0) {
				// LIST OF QUESTIONS AND ANSWERS
				$req_question = "SELECT * FROM questions WHERE niveau = 0 ORDER BY rand() LIMIT 5";
				// EXECUTE THE REQUEST
				$res_question = mysqli_query($mysqli, $req_question);
				// DISPLAY THE QUESTIONS
				echo "<ol>";
				while ($ligne_question = mysqli_fetch_assoc($res_question)) {
					$idq = $ligne_question['idq'];
			?>
					<h3 class="question">
						<li><?= $ligne_question['libelleQ'] ?></li>
					</h3>
					<?php
					// DISPLAY THE ANSWERS ASSOCIATED WITH THESE QUESTIONS
					$req_reponse = "SELECT * FROM reponses WHERE idq = $idq";
					// EXECUTE THE REQUEST
					$res_reponse = mysqli_query($mysqli, $req_reponse);
					// DISPLAY THE QUESTIONS
					while ($ligne_reponse = mysqli_fetch_assoc($res_reponse)) {
					?>
						<input type="radio" name="<?= $idq ?>" value="<?= $ligne_reponse['idr'] ?>" required><?= ' ' . $ligne_reponse['libeller'] ?><br>
					<?php
					}
				}
			}
			// ELSE IF THE PLAYER LEVEL IS 1
			else if ($_SESSION['niveau'] == 1) {
				// LIST OF QUESTIONS AND ANSWERS
				$req_question = "SELECT * FROM questions WHERE niveau = 1 ORDER BY rand() LIMIT 5";
				// EXECUTE THE REQUEST
				$res_question = mysqli_query($mysqli, $req_question);
				// DISPLAY THE QUESTIONS
				echo "<ol>";
				while ($ligne_question = mysqli_fetch_assoc($res_question)) {
					$idq = $ligne_question['idq'];
					?>
					<h3 class="question">
						<li><?= $ligne_question['libelleQ'] ?></li>
					</h3>
					<?php
					// DISPLAY THE ANSWERS ASSOCIATED WITH THESE QUESTIONS
					$req_reponse = "SELECT * FROM reponses WHERE idq = $idq";
					// EXECUTE THE REQUEST
					$res_reponse = mysqli_query($mysqli, $req_reponse);
					// DISPLAY THE QUESTIONS
					while ($ligne_reponse = mysqli_fetch_assoc($res_reponse)) {
					?>
						<input type="radio" name="<?= $idq ?>" value="<?= $ligne_reponse['idr'] ?>" required><?= ' ' . $ligne_reponse['libeller'] ?><br>
			<?php
					}
				}
			}
			?>
			<!-- BUTTON TO SEND THE ANSWERS -->
			<input type="submit" value="Envoyer" class="style_btn">
		</form>
	</section>
</body>

</html>