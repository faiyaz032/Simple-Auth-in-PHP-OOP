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
            $hashed_password = password_hash($upass, PASSWORD_DEFAULT);

            $stmt = $this->db->prepare("INSERT INTO `users`(user_name,user_email,user_pass) VALUES (:uname, :uemail, :upass)");
            $stmt->bindParam(":uname", $uname);
            $stmt->bindParam(":uemail", $uemail);
            $stmt->bindParam(":upass", $hashed_password);
            $stmt->execute();

            return $stmt;

        }catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    //Login Method
    public function login($uname, $uemail,$upass)
    {
        try{
            $stmt = $this->db->prepare("SELECT * FROM `users` WHERE user_name=:uname OR user_email=:uemail LIMIT 1");
            $stmt->execute(array(':uname'=>$uname, ':uemail'=>$uemail));
            $userRow = $stmt->fetch(PDO::FETCH_ASSOC);
            if($stmt->rowCount() > 0)
            {
                if(password_verify($upass, $userRow['user_pass']))
                {
                    $_SESSION['user_session'] = $userRow['user_id'];
                    return true;
                }else{
                    return false;
                }
            }
        }catch(PDOException $e)
        {
            echo $e->getMessage();
        }
    }

    //Session check method
    public function is_loggedIn()
    {
        if(isset($_SESSION['user_session']))
        {
            return true;
        }
    }

    //Redirect Helper
    public function redirect($url)
   {
       header("Location: $url");
   }

   //Logout Method
   public function logout()
   {
       session_destroy();
       unset($_SESSION['user_session']);
       return true;
   }

}

