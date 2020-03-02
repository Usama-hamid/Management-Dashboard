<?php
    require_once('class_function/error.php');
  	require_once('class_function/session.php');
    require_once('class_function/function.php');
  	require_once('class_function/dbconfig.php');

    $email      = $_POST['email'];
    $password   = $_POST['password'];
    //echo $email;
    //die();

    $login_account  = sql($DBH,"select * from login where email = ?",array($email),"rows");
    $login_check    = sql($DBH,"select * from login where email = ? AND password = ?",array($email,$password),"rows");

    if(count($login_account) != 1){
        $_SESSION['msg_danger'] = "No account exists with email '$email', please create an account!";
        redirect("index.php");
    }else   if(count($login_check) != 1){
        $_SESSION['msg_danger'] = "Invalid Email Password Combination!";
        redirect("index.php");
    }else{

      //session_regenerate_id();

      $_SESSION['LOGIN_USER_ID']   = $login_check[0]['id'];
      $_SESSION['LOGIN_USER_NAME'] = $login_check[0]['user_name'];
      $_SESSION['LOGIN_ORG_ID']    = $login_check[0]['org_id'];
      $_SESSION['LOGIN_EMAIL']     = $login_check[0]['email'];
      $_SESSION['LOGIN_PHONE']     = $login_check[0]['phone'];
      $_SESSION['LOGIN_TYPE']      = $login_check[0]['type'];
      $_SESSION['LOGIN_HASH']      = $login_check[0]['hash'];

      $_SESSION['COMPANY_NAME']        = company_name($login_check[0]['org_id']);
      $_SESSION['COMPANY_HASH']        = company_hash($login_check[0]['org_id']);
      $time = time();
    //  die (json_encode($time));
    sql($DBH,"update login SET last_login = ? WHERE id = ?", array($time,$_SESSION['LOGIN_USER_ID']), "rows");
      //session_write_close();
if ($_SESSION['LOGIN_TYPE']== 'Admin') {
  redirect("list_users.php");
}
if ($_SESSION['LOGIN_TYPE']== 'User') {
  redirect("profile.php");
}
      redirect("dashboard.php");
  }
?>
