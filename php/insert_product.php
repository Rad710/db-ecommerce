<?php
session_start();
require_once __DIR__ . "/connect_database.php";

//check if all fields complete and at least one image
if (!empty($_POST['pname']) && !empty($_POST['categories']) && !empty($_POST['dimension']) 
    && !empty($_POST['price']) && !empty($_POST['weight']) && !empty($_POST['desc']) 
    && !empty($_POST['inventory']) && ($_FILES['images']['size'] != 0)) {

    $pdo = connect_database();
    //parse for the sql string
    $data = ['name' => trim($_POST['pname']),'dimension' => trim($_POST['dimension']), 'price' => trim($_POST['price']), 
    'weight' => trim($_POST['weight']), 'desc' => trim($_POST['desc']), 'vid' => $_SESSION['uid'], 
    'inventory' => trim($_POST['inventory'])];

    $sql = "INSERT INTO Product (Pname, Price, Pdesc, weight, dimension, Vid, inventory)
				VALUES (:name , :price, :desc, :weight, :dimension, :vid, :inventory)";

    // $text = $pdo->quote($_POST['categories']);
    $categories = explode(' ', $_POST['categories']);
    $last_id = null;

    //execute all sql commands for product, category and has_image
    try {
        $q = $pdo->prepare($sql);
        $q->execute($data);
            
        $last_id = $pdo->lastInsertId();

        foreach($categories as $category)
        {
            $category = preg_replace("/[^A-Za-z0-9 ]/", '', $category);
            if(!empty($category))
            {
                $sql = "INSERT INTO category (Pid, Cname) 
                        VALUES ('$last_id', '$category')";

                $q = $pdo->prepare($sql);
                $q->execute();
            }
        }

        $countfiles = count($_FILES['images']['name']);
        for($index = 0;$index < $countfiles;$index++){

            if(isset($_FILES['images']['name'][$index]) && $_FILES['images']['name'][$index] != ''){
               // File name
               $filename = $_FILES['images']['name'][$index];
         
               // Get extension
               $ext = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
         
               // Get content
               $cont = file_get_contents($_FILES['images']['tmp_name'][$index]);
            //    $cont = base64_decode(str_replace(array('-', '_',' ','\n'), array('+', '/','+',' '), $cont));

               $sql = "INSERT INTO has_image (pid, name, extension, Pimage) VALUES (?, ?, ?, ?);";
               
               $q = $pdo->prepare($sql);
               $q->execute([$last_id, $filename, $ext, $cont]);
            }
         }
         $pdo = null;

    } catch (PDOException $e) {
        http_response_code(400);
    }
} else {
    $pdo = null;
    http_response_code(401);
}