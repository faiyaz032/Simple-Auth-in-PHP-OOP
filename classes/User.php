<?php

class User{
    private $db;

    function __construct($connect)
    {
        $this->db = $connect;
    }


}