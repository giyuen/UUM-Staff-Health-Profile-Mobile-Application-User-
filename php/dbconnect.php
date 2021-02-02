<?php
$servername = "localhost";
$username   = "joshuaoo_joshuaoo";
$password   = "gy24204836";
$dbname     = "joshuaoo_uumstaffhealthprofile";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
   die("Connection failed: " . $conn->connect_error);
}
?>