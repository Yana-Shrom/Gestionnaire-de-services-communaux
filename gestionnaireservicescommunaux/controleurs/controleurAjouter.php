<?php
$options="";
$message="";
$com = getCom($connexion) ;
if($com == null) {
	$options .= "Aucune instance trouvée dans la base de données !";
}
else{
	if (!$com) {
		die("Erreur dans la requête : " . $connexion->error);
	}
	while ($row = mysqli_fetch_assoc($com)) {
		$options .="<option value=".$row['nomCommune'].">".$row['nomCommune']."</option>";
	}
}


if(isset($_POST['boutonValider'])) { // formulaire soumis

    $val = $_POST['name']; 

    // recuperation de les valeurs saisie
	foreach ($_POST['communes'] as $option) {
		if(checkServiceDontFind($val, $option, $connexion) == FALSE) { // pas de Service avec ce nom, insertion
			$insertion = insertService($val, $option, $connexion); // correction ici
			
			if($insertion) {
				$message = "Le service $val a bien été ajoutée !";
			}
			else {
				$message = "Erreur lors de l'insertion du service $val. $option";
			}
		}
		else {
			$message = "Ce service existe déjà pour ces communes($option).";
		}
	}
    
}
?>
