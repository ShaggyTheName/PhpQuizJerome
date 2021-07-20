<?php

//Start session
session_start();

//Opport
$incPaths = $_SERVER['DOCUMENT_ROOT'] . '/php';
$incPaths .= PATH_SEPARATOR;

//Opport
$incPaths .= $_SERVER['DOCUMENT_ROOT'] . '/projects/jerome_quiz/php';
set_include_path($incPaths);

//includes require for all pages
include 'auth.php';
include 'DBInclude.php';

//tracing
define('TRACE_DB_ACCESS', false);
