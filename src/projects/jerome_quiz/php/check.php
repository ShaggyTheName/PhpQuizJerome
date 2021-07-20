<?php
    session_start();

    if(!isset($_POST["submit"])){
            header("Location: ../templates/question.php");
    } else {
        if($_POST["token"] == $_SESSION["token"]) {
            $_SESSION['counter']++;
            $_SESSION['achievedPoints'] = $_SESSION['achievedPoints'] + $_POST['radio'];
            $_SESSION["token"] = md5(uniqid());
            header("Location: ../templates/question.php");
        }
    }
