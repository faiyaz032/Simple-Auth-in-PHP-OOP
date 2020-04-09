<?php

class User{

    private $db;

    function __construct($connect)
    {
        $this->db = $connect;
    }

    //Register Method
    public function register($uname, $uemail,$upass)
    {
        try
        {
             password_hash($upass, PASSWORD_DEFAULT);

            $stmt = $this->db->prepare("INSERT INTO `users`(user_name,user_email,user_pass) VALUES (:uname, :uemail, :upass)");
            $stmt->bindParam(":uname", $uname);
            $stmt->bindParam(":uemail", $uemail);
            $stmt->bindParam(":upass", $upass);
            $stmt->execute();

            return $stmt;

        }catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

}