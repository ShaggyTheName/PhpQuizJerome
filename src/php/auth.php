<?php
if (!isset($_SERVER['PHP_AUTH_USER']) || 
    $_SERVER['PHP_AUTH_USER'] != "Shaggy" || 
    $_SERVER['PHP_AUTH_PW'] != "SillyQuiz") 
{   
    header('WWW-Authenticate: Basic realm="My Realm"');
    header('HTTP/1.0 401 Unauthorized');
    echo 'Sorry, you may not see this page. Good-bye.';
    exit;    
} 