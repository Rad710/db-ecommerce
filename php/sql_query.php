<?php
//Post: updates a table in the database according to passed $sql and closes $conn
require_once __DIR__ . '/connect_database.php';

function sql_query($sql, $data) {   
    $pdo = connect_database(); 

    try {
        $q =$pdo->prepare($sql);
        $q->execute($data);
    } catch (PDOException) {
        http_response_code(400);
    }
    $pdo = null;
}