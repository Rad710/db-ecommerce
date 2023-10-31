<?php
//Post: receives input field text and searches products matching. Return encoded sql table
require_once __DIR__ . '/connect_database.php';

if (!empty($_POST['text']))
{
    $pdo = connect_database();
    // $text = $pdo->quote($_POST['text']);
    $keywords = explode(' ', $_POST['text']);
    $keys = [];

    foreach ($keywords as $term)
    {
        $term = trim($term);
        if (!empty($term)) {
            $keys[] = "Pname LIKE '%$term%' 
                    OR Cname LIKE '%$term%' 
                    OR Pdesc LIKE '%$term%'";
        }
    }

    try {
        $result = $pdo->query("SELECT product.Pid, Pname, Price FROM product, category WHERE product.Pid = category.Pid 
                    AND (" . implode(' OR ', $keys) . ") 
                    GROUP BY product.Pid");

        $data = $result->fetchAll();
        $rows = [];
        foreach($data as $item) {
            $sql = "SELECT * 
                    FROM has_image 
                    WHERE Pid = ?";

            $q = $pdo->prepare($sql);
            $q->execute([$item['Pid']]);

            if($result = $q->fetch())
            {
                $rows[] = $item + ['pimage' => base64_encode($result['Pimage']), 'ext' => $result['extension']];
            }
        }

        echo json_encode($rows);
    }
    catch(PDOException $e) {
        http_response_code(404);
    }
    $pdo = null;
}