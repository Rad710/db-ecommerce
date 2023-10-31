<?php
//Receives data from input field and searches for user. Post: on success the Session variables are initiated

session_start();
require_once __DIR__ . "/connect_database.php";

if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $pdo = connect_database();
    $data = [trim($_POST['email']), $_POST['password']];

    $sql = "SELECT * 
    FROM `user`  
    WHERE email = ? AND pssword = ?";

    try {
        $q = $pdo->prepare($sql);
        $q->execute($data);
        $result = $q->fetchAll();
        if($result)
        {
            $_SESSION['uid'] = $result[0]['Uid'];
            $_SESSION['fname'] = $result[0]['Fname'];
            $_SESSION['lname'] = $result[0]['Lname'];
        } else {
            http_response_code(404);
        }       
    } catch (PDOException $e) {
        http_response_code(400);
    }
    
    $pdo = null;
} else {
    http_response_code(404);
}