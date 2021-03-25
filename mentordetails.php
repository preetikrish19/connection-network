<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  include('db.php');
  $email = $con->real_escape_string($_POST['email']);
  $name = $con->real_escape_string($_POST['name']);
  $password = $con->real_escape_string($_POST['password']);
  $year = $con->real_escape_string($_POST['year']);
  $domain = $con->real_escape_string($_POST['domain']);
  $description = $con->real_escape_string($_POST['description']);
  $_SESSION['email']=$email;
  $email = stripcslashes($email);
  $name = stripcslashes($name);
  $password = stripcslashes($password);
  $year = stripcslashes($year);
  $domain = stripcslashes($domain);
  $description = stripcslashes($description);
  $sql = "INSERT INTO mentordetails (email, name, password, year, domain, description) VALUES ('$email', '$name', '$password', '$year', '$domain', '$description')";
  if(mysqli_query($con, $sql))
  {
    echo "New user inserted";
    echo "<script>window.location.href='index.php'</script>";
  }
  else{
    echo "Error: " . $sql . "<br>" . $con->error;
  }
}
?>
