<?php
include_once("dbconnect.php");
$fullname = $_POST['fullname'];
$staffID1 = $_POST['staffID1'];
$gender = $_POST['gender'];
$age = $_POST['age'];
$address = $_POST['address'];
$phone1 = $_POST['phone1'];

$sqlregister = "INSERT INTO PERSONALPROFILEDATA(FULLNAME,STAFFID1,GENDER,AGE,ADDRESS,PHONE1) VALUES('$fullname','$staffID1','$gender','$age','$address','$phone1')";

if ($conn->query($sqlregister) === TRUE){
    echo "succes";
}else{
    echo "failed";
}
?>