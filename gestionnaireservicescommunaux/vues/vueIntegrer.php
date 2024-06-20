<h1>Intégrer les communes</h1>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="ComARA" value="Intégrer les communes de la région"/>
    </form >
</div>

<article>
	<?php if(isset($message)) { ?>
		<p class="font-curs"><?= $message ?></p>
	<?php } ?>
	<?php if(isset($resultats)) { ?>	
		<ul>
		<?php 
			foreach($resultats as $instance) {  // nombre d'attributs variable dans les résultats (selon la table)
				echo '<li>';
				foreach($instance as $valeur)  // affichage de chaque valeur (correspondant à chaque attribut)
					echo $valeur . ' ';
				echo '</li>';
			}
		?>
		</ul>
	<?php } ?>
</article>