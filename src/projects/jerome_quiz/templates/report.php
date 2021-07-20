<?php
include '../confiq.php';

    if(!isset($_SESSION["counter"])) {
        header("Location: ../templates/intro.php");
    } 



    // Result function
    function resultsMessage($correctAnsweres, $contentText) {

        if ($correctAnsweres >= 6) {
            echo '<p class="p1">' . $contentText[3]['Text'] . '</p>';
        }
        elseif ($correctAnsweres >= 4) {
            echo '<p class="p1">' . $contentText[4]['Text'] . '</p>';
        }
        else {
            echo '<p class="p1">' . $contentText[5]['Text'] . '</p>';
        }
    }
    session_destroy();
?>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/main.css?v=<?php echo time(); ?>">
</head>
<body>
    <div class="bgimg-1">
        <div class="caption">
            <span class="border">
            <?php
                echo '<a href="/index.php">' . $contentText[2]['Text'] . '</a>';
                echo '<p class="p1">You have answered ' . $_SESSION['achievedPoints'] . ' question(s) correctly.</p>';
                echo resultsMessage($_SESSION['achievedPoints'], $contentText);
                $_SESSION['token'] = md5(uniqid());
            ?></span>
        </div>
        <form class="form" action="intro.php">
                <input type="submit" value="RESTART" class="button2">
        </form>
    </div>
    <?php include "footer.php"; ?>
</body>
</html>