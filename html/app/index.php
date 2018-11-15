<?php
require("../protected/init.php");

$page = (!empty($_GET['page']) ? intval($_GET['page']) : 1);
if ($page < 1) {
    $page = 1;
}
$limite = 5;
$start = ($page - 1) * $limite;
$article = viewAllArticle($db, $start, $limite);

require("./header.php");
?>

<div class="row"></div>
<div class="container">
    <?php
    if (!empty($article)) {
        for ($i = 0; $i < count($article); $i++) { ?>

            <div class="col s2"></div>
            <div class="col s8 m7">
                <div class="card horizontal">
                    <?php if (($i % 2) == 0) { ?>
                        <div class="card-image">

                            <img src="./img/<?= $article[$i]['image'] ?>">
                        </div>
                    <?php } ?>
                    <div class="card-stacked">
                        <div class="card-content">
                            <span class="card-title font-mlp"><?= $article[$i]['title'] ?></span>
                            <p><?= $article[$i]['content'] ?></p>

                            <span class="pad-top-50 font-mlp">Créer par <?= $article[$i]['username'] ?></span>
                        </div>

                        <div class="card-action center-align">
                            <a class="btn pink pulse" href="article.php?id=<?= intval($article[$i]['id']); ?>">Voir plus</a>
                        </div>
                    </div>
                    <?php if (($i % 2) == 1) { ?>
                        <div class="card-image">
                            <img src="./img/<?= $article[$i]['image'] ?>">

                        </div>
                    <?php } ?>
                </div>
            </div>

        <?php }
        if ($page > 1) {
            ?>

            <a class="btn-floating btn-large pulse left red" href="?page=<?php echo $page - 1; ?>"><i
                        class="material-icons">arrow_left</i></a>


        <?php }

        $countArt=countArticle($db);
        if($countArt['nbArt']>5*$start) {
        ?>
        <a class="btn-floating btn-large pulse right red" href="?page=<?php echo $page + 1; ?>"><i
                    class="material-icons">arrow_right</i></a>

    <?php }} ?>
</div>
