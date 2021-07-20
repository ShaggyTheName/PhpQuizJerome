<?php
    include '../confiq.php';
    
    // Set counter if not set already / Wenn counter +1 = Anzahl Questions -> send to report page
    
    if(!isset($_SESSION['counter'])) {
        $_SESSION['counter'] = 0;
        $_SESSION['achievedPoints'] = 0;
    } elseif($_SESSION['counter'] ==  count($questions)) {
        header('Location: report.php');
    } 

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
                <form action="../php/check.php" method="post">
                    <div class="center">
                        <?php 

// Set up token
$token = md5(uniqid());

// Session -> Token variable
$_SESSION['token'] = $token;



                    // Show Question (Question ID = counter)    
                    echo '<h3>' . $questions[$_SESSION['counter']]['Text'] . '</h3>';
                    $x=0;

                    // Create a radio button for each answeres(id) == question (id)
                    foreach ($answers as $answer) {
                        if($answer['QuestionID'] == $questions[$_SESSION['counter']]['Id']) {

                            echo '<p class="p1">'. '<input type="radio" class="radio" id="answer'. $x .'" name="radio" value="'. $answer['isCorrect'] .'" checked>  ';    
                            echo '<label for="answer'. $x .'">' . $answer['Text'] . '</label>'.'</p>';
                           
                            $x++;
                        }
                    }
                    ?> 
                </div>
                    <?php echo '<br>'; ?>
                    <input type="hidden" name="questionID" 
                        value="<?php echo 'q' . $_SESSION['counter'];?>"> 
                        <input type="hidden" name="token" id="token" value="<?php echo $token; ?>">
                        <input type="submit" name="submit" id="submit" value="NEXT" class="button">
            </form>
            
        </div>
        <form class="form" action="intro.php">
                <input type="submit" value="RESTART" class="button2">
        </form>
    </div>
    <?php include "footer.php"; ?>
</body>

</html>