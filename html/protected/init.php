<?php
declare(strict_types=1);
session_start();
if ($_GET['disconnect'] == 1) {
    session_destroy();
    header("location:./");
}
require("../protected/function.php");
$db = connectDB($host,$dbName,$user, $pass);
if (!empty ($_POST['connect'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    userConnect($db, $username, $password);

}

