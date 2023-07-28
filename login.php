<?php
// session_start();
if (isset($_SESSION["login"])) {
    header("Location:index.php");
    exit;
}

require 'koneksi.php';
global $db;

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
                $_SESSION["level_pengguna"] = "nol";
                header("Location:index.php");
                $_SESSION["login"] = true;
                exit;
            } else if ($row["level_pengguna"] == "satu") {
                $_SESSION["level_pengguna"] = "satu";
                header("Location:index.php");
                $_SESSION["login"] = true;
                exit;
            } else if ($row["level_pengguna"] == "dua") {
                $_SESSION["level_pengguna"] = "dua";
                header("Location:index.php");
                $_SESSION["login"] = true;
                exit;
          } else if ($row["level_pengguna"] == "tiga") {
            $_SESSION["level_pengguna"] = "tiga";
            header("Location:index.php");
            $_SESSION["login"] = true;
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
    html,
    body {
      height: 100%;
    }

    .form-signin {
      max-width: 330px;
      padding: 1rem;
    }

    .form-signin .form-floating:focus-within {
      z-index: 2;
    }

    .form-signin input[type="email"] {
      margin-bottom: -1px;
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
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
    <form action="" method="post" >

      <h1 style="text-align: center;" class="h3 mb-3 fw-normal">Login</h1>

      <div class="form-floating">
        <input type="username" class="form-control" id="floatingInput" name="username_pengguna">
        <label for="floatingInput">username</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="floatingPassword" name="password_pengguna">
        <label for="floatingPassword">Password</label>
      </div>

      <button class="btn btn-primary w-100 py-2" type="submit" name="login">Login</button>

    </form>
  </main>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

</body>

</html>