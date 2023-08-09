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
<!-- header.php -->
<!DOCTYPE html>
<html>

<head>
  <title>Halaman Web</title>

  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
</head>

<body>
  <header>

    <nav class="navbar navbar-dark bg-dark fixed-top">
      <div class="container-fluid">
        <button class="navbar-toggler border-0" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar">
          <span class="navbar-toggler-icon"></span> Toogle Button
        </button>

        <ul class="me-auto mb-sm-0 offset-3 text-white">
          <div id="jam"></div>
          <?php
          $nama = $_SESSION["nama_pengguna"];

          $tanggal = mktime(date('m'), date("d"), date('Y'));
          date_default_timezone_set("Asia/Jakarta");
          ?>
        </ul>

        <div class="btn-group">
          <button type="button" class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
            <i class="fa-solid fa-user fa-lg"></i>&nbsp; <strong><?= $_SESSION["nama_pengguna"] ?></strong>
          </button>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li> <a href="" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#profil">Profil</a></li>
            <li> <a href="logout.php" class="dropdown-item">Logout</a> </li>
          </ul>
        </div>

        <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
          <div class="offcanvas-header">
            <a class="btn btn-dark" type="button" href="index.php">
              <h5> Manajemen Aset</h5>
            </a>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="offcanvasDarkNavbar" aria-current="page" href="barang/index.php">
                  Barang
                </a>
              </li>
              <li class="nav-item">
                <a class=" nav-link" aria-current="page" href="merek/index.php">
                  Merek
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="jenis/index.php">
                  Jenis
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="opd/index.php">
                  OPD(Organisasi Perangkat Daerah)
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="gambar/index.php">
                  Gambar
                </a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catatan

                </a>
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a href="catatan/barang.php" class="dropdown-item">Barang</a></li>
                  <li><a href="catatan/pengguna.php" class="dropdown-item">Pengguna</a></li>
                </ul>
              </li>

            </ul>
          </div>
        </div>
      </div>
    </nav>

  </header>

  <!-- modal -->
  <div id="profil" class="modal" tabindex="-1">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Detail Pengguna</h5>
        </div>
        <div class="modal-body">

          <table class="table table-striped">

            <tr>
              <td>Username</td>
              <td>: <?= $_SESSION["username_pengguna"] ?> </td>
            </tr>

            <tr>
              <td>Nama</td>
              <td>: <?= $_SESSION["nama_pengguna"] ?> </td>
            </tr>

            <tr>
              <td>Level </td>
              <td>: <?php
                    if ($_SESSION["level_pengguna"] == "nol") {
                      echo "Unknown";
                    }
                    if ($_SESSION["level_pengguna"] == "satu") {
                      echo "Administrator";
                    }
                    if ($_SESSION["level_pengguna"] == "dua") {
                      echo "Petugas";
                    }
                    if ($_SESSION["level_pengguna"] == "tiga") {
                      echo "Staff Lapangan";
                    }  ?>
              </td>
            </tr>
          </table>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>

        </div>
      </div>
    </div>
  </div>
  <!-- end modal -->

  <body>

    <div class="p-4" id="main-content">

      <div class="card mt-5">
        <div class="card-body">

          <div class="row">
            <div class="col-sm-3 mb-3 mb-sm-0">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="card text-bg-primary">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>

          <div class="row mt-2">
            <div class="col-sm-3 mb-3 mb-sm-0">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="card text-bg-primary">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>

    </div>
    </div>
    </div>
  </body>
  <!-- footer.php -->
  <footer>
    <!-- Tambahkan elemen-elemen footer -->
    <script type="text/javascript" src="assets/js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-3.7.0.js"></script>
    <script type="text/javascript" src="assets/js/all.js"></script>
    <script type="text/javascript" src="assets/js/jqClock.min.js"></script>

    <!-- jam -->
    <script type="text/javascript">
      $(document).ready(function() {
        $("#jam").clock({
          "langSet": "id",
          "timeFormat": ", %Pukul% H:i:s "
        });
      });
    </script>

    <script>
      // event will be executed when the toggle-button is clicked
      document.getElementById("button-toggle").addEventListener("click", () => {
        // when the button-toggle is clicked, it will add/remove the active-sidebar class
        document.getElementById("sidebar").classList.toggle("active-sidebar");
        // when the button-toggle is clicked, it will add/remove the active-main-content class
        document.getElementById("main-content").classList.toggle("active-main-content");
      });
    </script>


  </footer>

</body>

</html>

</html>