<?php
//Post: inserts a new user into table using given input fields
session_start();
require_once __DIR__ . '/connect_database.php';

if(!empty($_POST['email']) && !empty($_POST['password']) && !empty($_POST['repeat'])) {   
    $pdo = connect_database(); 

    $sql = "INSERT INTO `User` (email, pssword) 
    VALUES (?, ?)";

    if($_POST['password'] == $_POST['repeat'])
    {
        try {
            $q =$pdo->prepare($sql);
            $q->execute([trim($_POST['email']), $_POST['password']]);

            $_SESSION['uid'] = $pdo->lastInsertId();
        } catch (PDOException) {
            http_response_code(400);
        }
    } else {
        http_response_code(401);
    }
    
    $pdo = null;
} else {
    http_response_code(404);
}