<?php 
//receives input from ajax call and updates given user entry with given input
require_once __DIR__ . '/sql_query.php';
session_start();

if (!empty($_POST['fname']) && !empty($_POST['lname']) && !empty($_POST['country']) && !empty($_POST['state'])
   && !empty($_POST['city']) && !empty($_POST['street']) && !empty($_POST['zip_code']) && !empty($_POST['phone'])) {
    $sql = "UPDATE `user`
      SET Fname = :fname, Lname = :lname, country = :country, `state` = :state, city = :city,
      street = :street, zip_code = :zip_code, phone = :phone 
      WHERE Uid = '". $_SESSION['uid'] . "'";

    $data = ['fname' => trim($_POST['fname']),'lname' => trim($_POST['lname']), 'country' => trim($_POST['country']),
    'state' => trim($_POST['state']), 'city' => trim($_POST['city']), 'street' => trim($_POST['street']),
     'zip_code' => trim($_POST['zip_code']), 'phone' => trim($_POST['phone'])];

    sql_query($sql, $data);

    $_SESSION['fname'] = $data['fname'];
    $_SESSION['lname'] = $data['lname'];

  } elseif(!empty($_POST['new']) && !empty($_POST['repeat']) && ($_POST['new'] == $_POST['repeat'])) {
    $sql = "UPDATE `user`
      SET pssword = :password WHERE Uid = '". $_SESSION['uid'] . "'";

    $data = ['password' => $_POST['new']];
    sql_query($sql, $data);

  } else {
    http_response_code(401);
  }
?>