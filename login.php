<?php
session_start();

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
    <form>

      <h1 style="text-align: center;" class="h3 mb-3 fw-normal">Login</h1>

      <div class="form-floating">
        <input type="username" class="form-control" id="floatingInput" name="username">
        <label for="floatingInput">username</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="floatingPassword" name="password">
        <label for="floatingPassword">Password</label>
      </div>

      <button class="btn btn-primary w-100 py-2" type="submit" name="login">Login</button>

    </form>
  </main>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>

</body>

</html>