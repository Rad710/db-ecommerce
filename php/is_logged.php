<?php
session_start();

if (!empty($_SESSION['uid'])) {
    $result = 'Welcome back ' . $_SESSION['fname'] . ' ' . $_SESSION['lname'] . '!';
    echo $result;
} else {
    http_response_code(401);
}