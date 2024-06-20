<?php 

// connexion à la BD, retourne un lien de connexion
function getConnexionBD() {
	$connexion = mysqli_connect("##", "##", "##", "##");
	if (mysqli_connect_errno()) {
	    printf("Échec de la connexion : %s\n", mysqli_connect_error());
	    exit();
	}
	mysqli_query($connexion,'SET NAMES UTF8'); // noms en UTF8
	return $connexion;
}

// déconnexion de la BD
function deconnectBD($connexion) {
	mysqli_close($connexion);
}


// 							Fonctionnalité  1 

function getNb3tables($connexion) {
	$query = "SELECT 'Communes' AS nom_table, COUNT(*) AS nombre_instances FROM commune c
	UNION ALL
	SELECT 'Regions' AS nom_table, COUNT(*) AS nombre_instances FROM region r
	UNION ALL
	SELECT 'Départements' AS nom_table, COUNT(*) AS nombre_instances FROM Departemment d";
	$res = mysqli_query($connexion, $query);
	return $res;
}

function getTop3Departements($connexion) {
	$query = "SELECT d.nomDep
	FROM Departemment d
	INNER JOIN commune c ON d.nomDep = c.nomDep
	GROUP BY d.nomDep
	ORDER BY COUNT(c.idC) DESC
	LIMIT 3";
	$res = mysqli_query($connexion, $query);
	return $res;
}

function getLtsChildrensAndSchool($connexion){
	$query = "SELECT e.nomE AS NomEnfant, e.prenomE AS PrenomEnfant, ec.adresse AS ecole 
	FROM enfant e INNER JOIN classe c ON e.classe = c.classe 
	INNER JOIN ecole ec ON c.adresse = ec.adresse";
	
	$res = mysqli_query($connexion, $query);
	return $res;
}

function getLtsChildrensAndCanteen($connexion){
	$query = "SELECT e.nomE AS NomEnfant, e.prenomE AS PrenomEnfant, can.nomRes AS Cantine FROM enfant e 
	INNER JOIN cantine can ON e.nomRes = can.nomRes 
	WHERE EXISTS( SELECT 1 FROM demande d WHERE e.nomE = d.personne_a_la_demande 
	AND d.dateDemande = '2024-01-01' )";
	
	$res = mysqli_query($connexion, $query);
	return $res;
}

function getPChildrenRegisteSd($connexion){
	$query = "SELECT e1.nomE AS nomEnfant1, e1.prenomE AS prenomEnfant1, e1.classe AS classeEnfant1, e2.nomE AS nomEnfant2, e2.prenomE AS prenomEnfant2, e2.classe AS classeEnfant2 FROM enfant e1 
	INNER JOIN enfant e2 ON e1.nomE = e2.nomE 
	AND e1.prenomE = e2.prenomE 
	AND e1.classe != e2.classe";

	$res = mysqli_query($connexion, $query);
	return $res;
}

function getTop3ServicesDemandes($connexion){
	$query = "SELECT d.typeService, COUNT(*) AS nombre_demandes
	FROM demande d
	JOIN effectuer e ON d.idD = e.idD
	GROUP BY d.typeService
	ORDER BY nombre_demandes DESC
	LIMIT 3";

	$res = mysqli_query($connexion, $query);
	return $res;
}



function getTop3ServicesProposes($connexion) {
	$query = "SELECT p.typeService, COUNT(*) AS nombre_propositions
	FROM proposer p
	JOIN services s ON p.typeService = s.typeService
	GROUP BY p.typeService
	ORDER BY nombre_propositions DESC
	LIMIT 3";

	$res = mysqli_query($connexion, $query);
	return $res;
}

function getTop3CommunesUnions($connexion) {
	$query = "SELECT c.nomCommune AS Commune, COUNT(*) AS NombreUnions
	FROM proposer p
	JOIN commune c ON p.idC = c.idC
	WHERE p.typeService = 'Services_Union'
	GROUP BY c.nomCommune
	ORDER BY NombreUnions DESC
	LIMIT 3";

	$res = mysqli_query($connexion, $query);
	return $res;
}

// 							Fonctionnalité  2

function CommuneARA($connexion) {
    $selectQuery = "SELECT * FROM dataset.commune WHERE region = 'Auvergne Rhône-Alpes'";
    $result = mysqli_query($connexion, $selectQuery);

    if ($result === false) {
        echo "Erreur de requête SELECT : " . mysqli_error($connexion);
        return;
    }

    // Vérifier s'il y a des résultats
    if (mysqli_num_rows($result) > 0) {
        // Parcourir les résultats et effectuer les transformations si nécessaire
        while ($row = mysqli_fetch_assoc($result)) {
            // Échapper les valeurs pour éviter les problèmes d'injection SQL
            $idC = mysqli_real_escape_string($connexion, $row['idC']);
            $code_postal = mysqli_real_escape_string($connexion, $row['code_postal']);
            $nomCommune = mysqli_real_escape_string($connexion, $row['nomCommune']);
            $coordonneesC = mysqli_real_escape_string($connexion, $row['coordonneesC']);
            $codeINSEE = mysqli_real_escape_string($connexion, $row['codeINSEE']);
            $adresse_mairie = mysqli_real_escape_string($connexion, $row['adresse_mairie']);
            $nomDep = mysqli_real_escape_string($connexion, $row['nomDep']);

            // Construire la requête d'insertion
            $insertQuery = "INSERT INTO commune (idC, code_postal, nomCommune, coordonneesC, codeINSEE, adresse_mairie, nomDep) 
                            VALUES ('$idC', '$code_postal', '$nomCommune', '$coordonneesC', '$codeINSEE', '$adresse_mairie', '$nomDep')";
            
            // Exécuter la requête d'insertion
            mysqli_query($connexion, $insertQuery);
        }

        echo "Intégration des données réussie!";
    } else {
        echo "Aucune donnée à intégrer.";
    }

    // Libérer le jeu de résultats
    mysqli_free_result($result);
}

// 							Fonctionnalité  3

function getCom($connexion){
	$query="SELECT c.nomCommune From commune c";
	$res = mysqli_query($connexion, $query);
	return $res; 
}

function checkServiceDontFind($val, $option, $connexion) {
	$query = "SELECT p.typeService, p.idC, c.nomCommune FROM proposer p 
	JOIN services s ON p.typeService = s.typeService 
	JOIN commune c ON p.idC = c.idC";
	$res = mysqli_query($connexion, $query);

	while ($row = mysqli_fetch_assoc($res)){
		if ($val == $row['typeService'] && $option == $row['nomCommune']) {
			return TRUE;
		}	
	}

	return FALSE;
}

function insertService($val, $options, $connexion){
	$query = "INSERT INTO proposer (idC, typeService) 
	VALUES ((SELECT idC FROM commune WHERE nomCommune = '$options'),'$val')";
	$res = mysqli_query($connexion, $query);
	return $res;
}			
?>
