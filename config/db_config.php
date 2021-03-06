<?php


 $DB_host = "localhost";
 $DB_user = "root";
 $DB_pass = "";
 $DB_name = "auth_oop";

 try{
     $connect = new PDO("mysql:host={$DB_host}; dbname={$DB_name}", $DB_user,$DB_pass);
     $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 }
 catch (PDOException $e)
 {
     echo  $e->getMessage();
 }

 include_once 'classes/User.php';
 $user = new User($connect);
