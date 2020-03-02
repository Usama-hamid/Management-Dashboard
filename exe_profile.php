<?php
    require_once('class_function/error.php');
  	require_once('class_function/session.php');
    require_once('class_function/function.php');
  	require_once('class_function/dbconfig.php');
    require_once('class_function/validate.php');

// die(json_encode($_POST));
    //Personal Information
    if($_POST['personal_form'] == "Profile"){

      $hash      = $_POST['hash'];
      $user_name = $_POST['user_name'];
      $email     = $_POST['email'];
      $phone     = $_POST['phone'];

      $duplicate_email   = sql($DBH,"select * from login where email = ? AND hash != ?",array($email,$hash),"rows");
      $duplicate_phone   = sql($DBH,"select * from login where phone = ? AND hash != ?",array($phone,$hash),"rows");

      if(count($duplicate_email) > 0){
            $_SESSION['msg_danger'] = "Email $email, Already Exist";
            redirect("profile.php");
      }

      else if(count($duplicate_phone) > 0){
          $_SESSION['msg_danger'] = "Phone $phone, Already Exist";
          redirect("profile.php");
      }

      $rows =  sql($DBH, "update login SET user_name = ?, email =?, phone =? WHERE hash = ?", array($user_name, $email, $phone, $hash), "rows");
      $_SESSION['msg_success'] = " User Information Is Updated !";
      redirect("profile.php");
    }

    //Company Information
     if($_POST['company_form'] == "Company"){

      $hash                = $_POST['hash'];
      $org_name            = $_POST['org_name'];
      $org_phone           = $_POST['org_phone'];
      $org_email           = $_POST['org_email'];
      $org_address         = $_POST['org_address'];
      $org_description     = $_POST['org_description'];

      $duplicate_org_email   = sql($DBH,"select * from company where org_email = ? AND hash != ?",array($org_email,$hash),"rows");
      $duplicate_org_phone   = sql($DBH,"select * from company where org_phone = ? AND hash != ?",array($org_phone,$hash),"rows");

      if(count($duplicate_org_email) > 0){
            $_SESSION['msg_danger'] = "Email $org_email, Already Exist";
            redirect("profile.php");
      }

      else if(count($duplicate_org_phone) > 0){
          $_SESSION['msg_danger'] = "Phone $org_phone, Already Exist";
          redirect("profile.php");
      }

      $rows =  sql($DBH, "update company SET org_name = ?,  org_phone =?, org_email =?, org_address =?, org_description=? WHERE hash = ?", array($org_name, $org_phone, $org_email, $org_address, $org_description, $hash), "rows");

    $_SESSION['msg_success'] = " Company Details Is Updated !";
    redirect("profile.php");
    }

    //Change Password

  $id       = $_SESSION['LOGIN_USER_ID'];
  $old_pass = $_POST['old_password'];
  $new_pass = $_POST['new_password'];
  $ch_pass  = sql($DBH,"select password from login where id = ?", array($id),"rows");
//  die(json_encode($ch_pass[0]['password']));
if ($_SESSION{'LOGIN_TYPE'}=='Admin') {

  redirect("404.php");

}

  if($old_pass==$ch_pass[0]['password']){

  $rows =  sql($DBH, "update login SET password = ?  WHERE id = ?", array($new_pass, $id), "rows");

  $_SESSION['msg_success'] = " Your Password Is Updated !";
  redirect("profile.php");
}
  else{
  $_SESSION['msg_danger'] = "Old Password is Invalid";
  redirect("profile.php");
}

?>
