<?php
    // includes
    include '../confiq.php';
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
        <div class="captionIndex">   
            <img class="img" src=/images/Useless-Logo.png>
                <span class="border">
                <?php
                    echo '<a href="/index.php">'.'<h3>'.$contentText[8]['Text'].'<h3>'.'</a>'; 
                    echo '<a href="/index.php">'.'<h3>'.$contentText[10]['Text'].'<h3>'.'</a>'; 
                    echo '<a href="/index.php">'.'<h3>'.$contentText[6]['Text'].'<h3>'.'</a>'; 
                ?></span>
                <form action="question.php" method="post">
                <input type="hidden" name="questionID" 
                       value="<?php  ?>"> 
                <input type="submit" value="START" class="button">
            </form>
        </div>
    </div>
    <?php include "footer.php"; ?>
</body>
</html>