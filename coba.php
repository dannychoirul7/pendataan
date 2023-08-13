<?php
session_start();
if (!isset($_SESSION["login"])) {
  echo "<script>
  alert('Masukkan name dan Password');
  document.location.href ='login.php';
  </script>";
  exit;
}

?>
<!DOCTYPE html>
<html>

<!-- header.php -->
<header>

  <title>Halaman Web</title>

  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

</header>

<body>

  <!-- Tombol-tombol dengan kelas 'color-change-button' -->
  <a href="#" class="btn btn-danger color-change-button">Tombol 1</a>
  <a href="#" class="btn btn-danger color-change-button">Tombol 2</a>
  <a href="#" class="btn btn-danger color-change-button">Tombol 3</a>

</body>
<!-- footer.php -->
<footer>
  <!-- Tambahkan elemen-elemen footer -->
  <script type="text/javascript" src="assets/js/popper.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="assets/js/jquery-3.7.0.js"></script>
  <script type="text/javascript" src="assets/js/all.js"></script>
  <script type="text/javascript" src="assets/js/jqClock.min.js"></script>




  <script>
    document.addEventListener("DOMContentLoaded", function() {
      // Dapatkan semua elemen dengan kelas 'color-change-button'
      const colorChangeButtons = document.querySelectorAll(".color-change-button");

      // Atur event listener untuk semua tombol
      colorChangeButtons.forEach(function(button) {
        button.addEventListener("click", function() {
          // Hapus kelas 'btn-primary' dari semua tombol
          colorChangeButtons.forEach(function(otherButton) {
            otherButton.classList.remove("btn-primary");
            otherButton.classList.add("btn-danger");
          });

          // Tambahkan kelas 'btn-primary' pada tombol yang diklik
          button.classList.remove("btn-danger");
          button.classList.add("btn-primary");
        });
      });
    });
  </script>



</footer>


</html>

</html>