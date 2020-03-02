<?php
    require_once('class_function/error.php');
  	require_once('class_function/session.php');
    require_once('class_function/function.php');
  	require_once('class_function/dbconfig.php');

  // die(json_encode($_REQUEST));

    $user_name  = $_POST['user_name'];
    $email      = $_POST['email'];
    $password   = $_POST['password'];
    $type       = $_POST['type'];

    //check duplicate email
    $duplicate_email  = sql($DBH,"select * from login where email = ?",array($email),"rows");


    //email
    if(count($duplicate_email) > 0){
      $_SESSION['msg_danger'] = "Email $email, already exists !";
      redirect("add_users.php");
    }

    else{
      //company
      sql($DBH,"insert into company (org_name,date_time,hash) values (?,?,?)",array($org_name,time(),unique_md5() ),"rows");
      $org_id = $DBH->lastInsertId();


      //user
      sql($DBH,"insert into login
      (user_name, org_id, email, password, type, date_time,hash)
      values
      (?,?,?,?,?,?,?)",
      array($user_name,$org_id,$email,$password,$type,time(),unique_md5() ),"rows");

      $_SESSION['msg_success'] = "Hello $user_name, your account is created !";
      redirect("add_users.php");
    }

?>
