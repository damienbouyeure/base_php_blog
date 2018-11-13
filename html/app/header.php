<?php
declare(strict_types=1);
session_start();
if ($_GET['disconnect'] == 1) {
    session_destroy();
    header("location:./");
}
require_once("../protected/function.php");
$db = connectDB($host,$dbName,$user, $pass);
if (!empty ($_POST['connect'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
     userConnect($db, $username, $password);

}

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Little Pony Blog</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.webui-popover/1.2.1/jquery.webui-popover.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../css/custom.css">
    <link href="https://cdn.jsdelivr.net/jquery.webui-popover/1.2.1/jquery.webui-popover.min.css" rel="stylesheet"/>


</head>
<body>

<div class="navbar-fixed">
    <nav>
        <div class="nav-wrapper rainbowBack">
            <a href="./" class="brand-logo font-mlp">&nbsp;My Little Pony</a>
            <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <?php if (empty($_SESSION)){ ?>
                <ul class="right hide-on-med-and-down">
                    <li><a href="signup.php">Inscription</a></li>
                    <li><a id="login" href="#">Connexion</a></li>
                </ul><?php } else { ?>
            <ul class="right hide-on-med-and-down">
                <li><a class="dropdown-trigger" href="#!" data-target="usermenu"> <?= $_SESSION['username'] ?><i
                                class="material-icons right">arrow_drop_down</i></a></li>

                <?php } ?>
        </div>

    </nav>
</div>
<?php if (empty($_SESSION)) { ?>
    <ul id="nav-mobile" class="sidenav">

        <li><a href="signup.php">Inscription</a></li>
        <li><a href="">Connexion</a>
            <form action="" method="post">
                <div class="input-field">
                    <input type="text" placeholder="username" name="username">
                </div>
                <div class="input-field">
                    <input type="password" placeholder="password" name="password">
                </div>
                <button class="btn waves-effect waves-light " type="submit" name="connect" value="1">Connexion
                    <i class="material-icons right">send</i>
                </button>
            </form>
        </li>
    </ul> <?php } else { ?>
    <ul id="nav-mobile" class="sidenav">
        <li><a href=""><?= $_SESSION['username'] ?></a></li>
        <li><a href="create.php">Créer un Article</a></li>
        <li><a href="dashboard.php">Tableau de bord</a></li>
        <li><a href="?disconnect=1">Deconnexion</a></li>
    </ul>
<?php } ?>
<ul id="usermenu" class="dropdown-content">
    <li><a href="create.php">Créer un Article</a></li>
    <li><a href="dashboard.php">Tableau de bord</a></li>
    <li><a href="?disconnect=1">Deconnexion</a></li>
</ul>
<script type="text/javascript">
    $(document).ready(function () {
        $('.sidenav').sidenav();
    });
    $(".dropdown-trigger").dropdown();
    $('#login').webuiPopover({url: '#login-form'});
</script>
<div id="login-form" class="webui-popover-content">
    <form action="" method="post">
        <div class="input-field">
            <input type="text" placeholder="username" name="username">
        </div>
        <div class="input-field">
            <input type="password" placeholder="password" name="password">
        </div>
        <button class="btn waves-effect waves-light " type="submit" name="connect" value="1">Connexion
            <i class="material-icons right">send</i>
        </button>
    </form>
</div>







