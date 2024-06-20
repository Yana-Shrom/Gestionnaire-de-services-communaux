<h1>Générateur de Périodes d'Essai</h1>

<form action="../controller/PeriodController.php" method="post">
	<label for="department">Département:</label>
	<input type="text" name="department" required>
	<br>
	<label for="maxMonths">Nombre de mois maximum:</label>
	<input type="number" name="maxMonths" required>
	<br>
	<label for="maxKilometers">Nombre de kilomètres:</label>
	<input type="number" name="maxKilometers" required>
	<br>
	<input type="submit" value="Générer">
</form>