<?php

$server = "localhost";
$user = "u622340404_code_camp";
$password = "CodeCamp@2023";
$db = "u622340404_code_camp_db";

$conn = mysqli_connect($server,$user,$password,$db);

if(!$conn) {
    die("Connection Failed:".mysqli_connect_error());
}

?>