<?php
require_once("./header.php");
$options = ['cost' => 12];
if (!empty ($_POST['action'])) {
    $username = htmlentities($_POST['username']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT, $options);
    $errorSignup = verifyUsername($db, $username);
    if ($errorSignup == FALSE) {
        insertUser($db, $username, $password);
        redirection('./');
    } else {
        $userExist = ' <div class="row">Nom d\'utilisateur deja existant</div>';
    }
}


?>

<script type="text/javascript">
    $(document).ready(function () {
        $('input#username, input#password').characterCounter();
    });
</script>
<div class="row"></div>
<div class="container">

    <div class="col s2"></div>
    <div class="col s8">
        <div class="card ">
            <div class="card-image">
                <img src="./img/mlp-subscribe.jpg">
                <span class="card-title font-mlp">Inscription</span>
            </div>
            <form class="card-content" id="reg-form" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <input id="username" type="text" class="validate" name="username" required>
                        <label for="username">Nom d'utilisateur</label>
                    </div>

                </div>
                <?= $userExist ?>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password" type="password" name="password" class="validate" minlength="6" required>
                        <label for="password">Mot de passe</label>
                    </div>
                </div>


                <div class="row">
                    <div class="input-field col s9">
                        &nbsp;
                    </div>
                    <div class="input-field col s3">
                        <button class="btn btn-small btn-register waves-effect waves-light" type="submit" name="action"
                                value="1">
                            Inscription
                            <i class="material-icons right">done</i>
                        </button>
                    </div>
                </div>
            </form>

        </div>
    </div>
    <div class="col s3"></div>
</div>

