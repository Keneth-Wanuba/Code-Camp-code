<?php

$server = "localhost";
$user = "root";
$password = "";
$db = "u622340404_code_camp_db";

$conn = mysqli_connect($server,$user,$password,$db);

if(!$conn) {
    die("Connection Failed:".mysqli_connect_error());
}

?>