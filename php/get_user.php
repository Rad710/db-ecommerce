<?php
//Post: return current logged in user sql encoded table.
require_once __DIR__ . "\connect_database.php";
session_start();

if (!empty($_SESSION['uid'])) {
    $pdo = connect_database();
    $sql = "SELECT * FROM `user` WHERE `Uid` = '". $_SESSION['uid'] . "'";

    try {
        $result = $pdo->query($sql)->fetchAll();
        echo json_encode($result);
    } catch (PDOException) {
        http_response_code(400);
    }
    $pdo = null;
}