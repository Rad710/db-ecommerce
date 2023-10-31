<?php
session_start();

if (!empty($_SESSION['uid'])) {
    session_unset();
    session_destroy();
} 