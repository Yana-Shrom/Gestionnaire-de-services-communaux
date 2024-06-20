<h1>Ajout d'un service</h1>

<form method="POST" action="#">
        <label for="name">Intitulé du service:</label>
        <input type="text" id="name" name="name" value="Service de recouvrement... " required>
        
        <label for="communes">Communes:</label>
        <select class="selected" id="communes" name="communes[]" multiple required>
			<? echo $options;?>
        </select>

        <input class="selected" type="hidden" name="boutonValider" value="ajouterService">
        <button class="btform" type="submit">Ajouter le service</button>
</form>


<article>
	<?php if(isset($message)) { ?>
		<p class="font-curs"><?= $message ?></p>
	<?php } ?>
</article>