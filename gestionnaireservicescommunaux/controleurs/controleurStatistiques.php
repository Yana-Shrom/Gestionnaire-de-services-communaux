<?php
$message="";

if(isset($_POST['Top3Dep'])) {
	$Top3Dep = getTop3Departements($connexion);
	if(getTop3Departements($connexion) == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$Top3Dep) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($Top3Dep)) {
			$message .= "Département : " . $row['nomDep'] . "<br>";
		}
	}
}

if(isset($_POST['nbInstance'])) {
	$nbInstance = getNb3tables($connexion) ;
	if($nbInstance == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$nbInstance) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($nbInstance)) {
			$message .= $row['nom_table'] . "--> Nombre d'instances : " . $row['nombre_instances'] . "<br>";
		}
	}
}

if(isset($_POST['ltsCS'])) {
	$ltsCS = getLtsChildrensAndSchool($connexion) ;
	if($ltsCS == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$ltsCS) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($ltsCS)) {
			$message .="<table class=\"t2\"><tr><th>Nom</th><th>Prénom</th>
			<th>Ecole</th></tr><tr>
			<td>".$row['NomEnfant']."</td>
			<td>".$row['PrenomEnfant']."</td>
			<td>".$row['ecole']."</td>
			</tr>
			</table>
			";
		
		}
	}
}

if(isset($_POST['ltsCC'])) {
	$ltsCC = getLtsChildrensAndCanteen($connexion) ;
	if($ltsCC == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$ltsCC) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($ltsCC)) {
			$message .="<table class=\"t2\"><tr><th>Nom</th><th>Prénom</th>
			<th>Ecole</th></tr><tr>
			<td>".$row['NomEnfant']."</td>
			<td>".$row['PrenomEnfant']."</td>
			<td>".$row['Cantine']."</td>
			</tr>
			</table>
			";
			
		}
	}
}

if(isset($_POST['Pchildren'])) {
	$Pchildren = getPChildrenRegisteSd($connexion) ;
	if($Pchildren == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$Pchildren) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($Pchildren)) {
			$message .="<table class=\"t2\"><tr><th>nomEnfant1</th><th>prenomEnfant1</th>
			<th>classeEnfant1</th><th>nomEnfant2</th><th>prenomEnfant2</th><th>classeEnfant2</th></tr><tr>
			<td>".$row['nomEnfant1']."</td>
			<td>".$row['prenomEnfant1']."</td>
			<td>".$row['classeEnfant1']."</td>
			<td>".$row['nomEnfant2']."</td>
			<td>".$row['prenomEnfant2']."</td>
			<td>".$row['classeEnfant2']."</td>
			</tr>
			</table>
			";
		}
	}
}
if(isset($_POST['Top3servDem'])) {
	$Top3servDem = getTop3ServicesDemandes($connexion) ;
	if($Top3servDem == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$Top3servDem) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($Top3servDem)) {
			$message .="Type de service : ".$row['typeService'] ."(".$row['nombre_demandes'].")<br>";
		}
	}
}
if(isset($_POST['Top3servPro'])) {
	$Top3servPro = getTop3ServicesProposes($connexion) ;
	if($Top3servPro == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$Top3servPro) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($Top3servPro)) {
			$message .="Type de service Proposé: ".$row['typeService'] ."(".$row['nombre_propositions']." Commune(s))<br>";
		}
	}
}

if(isset($_POST['Top3ComUni'])) {
	$Top3ComUni = getTop3CommunesUnions($connexion) ;
	if($Top3ComUni == null) {
		$message .= "Aucune instance trouvée dans la base de données !";
	}
	else{
		if (!$Top3ComUni) {
			die("Erreur dans la requête : " . $connexion->error);
		}
		
		while ($row = mysqli_fetch_assoc($Top3ComUni)) {
			$message .=$row['Commune'] ."(".$row['NombreUnions'].")<br>";
		}
	}
}

//50.531036° N latitude et 2.639260° E longitude

