<?php
session_start();
if(isset($_SESSION['email'])){
    unset($_SESSION['email']);
    unset($_SESSION['login']);
}

echo '<script>window.location.href="index.php";</script>';
?>
