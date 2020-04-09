<?php
require_once 'config/db_config.php';
$user->logout();
$user->redirect('index.php');
exit();