<?php
//Post: return current logged in user sql encoded table.
require_once __DIR__ . "/connect_database.php";

if (!empty($_POST['pid'])) {
    $pdo = connect_database();
    $sql = "SELECT * 
    FROM has_image 
    WHERE Pid = ?";

    try {
        $q = $pdo->prepare($sql);
        $q->execute([$_POST['pid']]);
        $q->setFetchMode(PDO::FETCH_ASSOC);

        $row = [];
        while($result = $q->fetch())
        {
            $row[] = (['pimage' => base64_encode($result['Pimage']), 'ext' => $result['extension']]);
        }
        echo json_encode($row);
    } catch (PDOException) {
        http_response_code(400);
    }
    $pdo = null;
}