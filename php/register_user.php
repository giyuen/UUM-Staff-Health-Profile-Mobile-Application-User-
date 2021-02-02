<?php
include_once("dbconnect.php");
$name = $_POST['name'];
$staffID = $_POST['staffID'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = sha1($_POST['password']);
$otp = rand(1000,9999);

$sqlregister = "INSERT INTO USER(NAME,STAFFID,EMAIL,PHONE,PASSWORD,OTP) VALUES('$name','$staffID','$email','$phone','$password','$otp')";

if ($conn->query($sqlregister) === TRUE){
     sendEmail($otp,$email);
    echo "succes";
}else{
    echo "failed";
}

function sendEmail($otp,$email){
    $from = "noreply@UUMStaffHealthProfile.com";
    $to = $email;
    $subject = "From UUM Staff Health Profile Mobile Application. Please verify your account";
    $message = "Use the following link to verify your account :"."\n https://joshuaooigy.com/uumstaffhealthprofile/php/verify_account.php?email=".$email."&key=".$otp;
    $headers = "From:" . $from;
    mail($email,$subject,$message, $headers);
}
?>