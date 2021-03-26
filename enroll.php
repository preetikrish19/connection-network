<?php
  session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connection | Enroll</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel = "stylesheet" href = "styleindex.css">
</head>
<body id="enroll">
<div class = "box">
<form action="enrolldetails.php" method = "post">
    <div class="form-group">
      <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
    </div>
    <div class="form-group">
      <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" id="year" placeholder="Year of study" name="year" required>
    </div>
    <div class="form-group">
      <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
    </div>
    <div class="form-group">
      <input type="varchar" class="form-control" id="department" placeholder="Department" name="department" required>
    </div>
    <button type="submit" name = "submit" value = "submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
</html>
