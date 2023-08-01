<?php
session_start();

require 'koneksi.php';

if (isset($_POST["login"])) {
  $username_pengguna = mysqli_real_escape_string($db, $_POST["username_pengguna"]);
  $password_pengguna = mysqli_real_escape_string($db, $_POST["password_pengguna"]);
  $_SESSION["username_pengguna"] = $username_pengguna;
  $result = mysqli_query($db, "SELECT * FROM pengguna WHERE username_pengguna = '$username_pengguna'");

  // cek username
  if (mysqli_num_rows($result) === 1) {
    // cek password
    $row = mysqli_fetch_assoc($result);
    if (password_verify($password_pengguna, $row["password_pengguna"])) { // bandingkan password inputan dengan database

      //multilevel user
      if ($row["level_pengguna"] == "nol") {
        $_SESSION["login"] = true;
        $_SESSION["id_pengguna"] = $row["id_pengguna"];
        $_SESSION["username_pengguna"] = $row["username_pengguna"];
        $_SESSION["nama_pengguna"] = $row["nama_pengguna"];
        $_SESSION["level_pengguna"] = $row["level_pengguna"];
        header("Location:index.php");
        exit;
      } else if ($row["level_pengguna"] == "satu") {
        $_SESSION["login"] = true;
        $_SESSION["id_pengguna"] = $row["id_pengguna"];
        $_SESSION["username_pengguna"] = $row["username_pengguna"];
        $_SESSION["nama_pengguna"] = $row["nama_pengguna"];
        $_SESSION["level_pengguna"] = $row["level_pengguna"];
        header("Location:index.php");
        exit;
      } else if ($row["level_pengguna"] == "dua") {
        $_SESSION["login"] = true;
        $_SESSION["id_pengguna"] = $row["id_pengguna"];
        $_SESSION["username_pengguna"] = $row["username_pengguna"];
        $_SESSION["nama_pengguna"] = $row["nama_pengguna"];
        $_SESSION["level_pengguna"] = $row["level_pengguna"];
        header("Location:index.php");
        exit;
      } else if ($row["level_pengguna"] == "tiga") {
        $_SESSION["login"] = true;
        $_SESSION["id_pengguna"] = $row["id_pengguna"];
        $_SESSION["username_pengguna"] = $row["username_pengguna"];
        $_SESSION["nama_pengguna"] = $row["nama_pengguna"];
        $_SESSION["level_pengguna"] = $row["level_pengguna"];
        header("Location:index.php");
        exit;
      }
    }
  }
  $error = true;
}
?>

?>
<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
  <!-- Favicons -->
  <meta name="theme-color" content="#712cf9">
  <!-- Custom styles for this template -->

  <style>
    .form-signin {
      max-width: 450px;
      padding: 1rem;
    }

    .form-signin input[type="password"] {
      margin-bottom: 10px;
      border-top-left-radius: 0;
      border-top-right-radius: 0;
    }
  </style>
</head>

<body class="d-flex align-items-center py-4 bg-body-tertiary">

  <main class="form-signin w-100 m-auto">
    <form action="" method="post">

      <h1 style="text-align: center;" class="h3 mb-3 fw-normal">Halaman Login</h1>

      <?php if (isset($error)) : ?>
        <div class="alert alert-danger text-center">
          <strong> username atau password salah</strong>
        </div>
      <?php endif; ?>

      <div class="form-floating">
        <input type="username" class="form-control" id="username_pengguna" name="username_pengguna">
        <label for="username_pengguna">username</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="password_pengguna" name="password_pengguna">
        <label for="password_pengguna">Password</label>
      </div>

      <button class="btn btn-primary w-100 py-2" type="submit" name="login">Login</button>

    </form>
  </main>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

</body>

</html>