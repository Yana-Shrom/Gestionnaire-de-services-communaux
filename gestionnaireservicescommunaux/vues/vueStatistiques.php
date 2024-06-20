<h1>Statistiques</h1>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt" type="submit" name="nbInstance" value="Afficher des stats"/>
    </form >
</div>

<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="ltsCS" value="Liste des enfants"/>
    </form >
</div>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="ltsCC" value="Liste des enfants inscrits à la cantine le 01/01/2024"/>
    </form >
</div>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="Pchildren" value="Paire d'enfants"/>
    </form >
</div>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="Top3Dep" value="Top 3 des département ayant le plus de communes"/>
    </form >
</div>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="Top3servDem" value="Top 3 des services les plus de demandés"/>
    </form >
</div>
<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="Top3servPro" value="Top 3 des services les plus de Proposés"/>
    </form >
</div>

<div class="button-bar">
    <form method="post" action="#">
        <input class="bt"type="submit" name="Top3ComUni" value="Top 3 des communes qui réalisent le plus d'unions"/>
    </form >
</div>

<article>
	<?php if(isset($message)) { ?>
		<p class="font-curs"><?= $message ?></p>
	<?php } ?>
</article>