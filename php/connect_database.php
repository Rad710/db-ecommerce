<?php
//Post: established a PDO sql connection
function connect_database()
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "shopping website";
    //Create connection
    try {
        $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        http_response_code(400);
    }

    return $pdo;
}