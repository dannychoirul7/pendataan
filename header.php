<!-- header.php -->
<!DOCTYPE html>
<html>

<head>
  <title>Halaman Web</title>

  <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/dataTables.bootstrap5.min.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/select2.min.css">
  <link rel="stylesheet" type="text/css" href="../assets/css/all.min.css">
</head>

<body>
  <header>
    <nav class="navbar navbar-dark bg-dark fixed-top">
      <div class="container-fluid">
        <button class="navbar-toggler border-0" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar">
          Toogle Button
        </button>

        <ul class="me-auto mb-sm-0 offset-3 text-white">
          <div id="jam"></div>
          <?php
          $nama = $_SESSION["nama_pengguna"];

          $tanggal = mktime(date('m'), date("d"), date('Y'));
          date_default_timezone_set("Asia/Jakarta");
          ?>
        </ul>

        <div class="dropdown">
          <button class="btn btn-dark dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user fa-lg"></i>&nbsp; <strong><?= $_SESSION["nama_pengguna"] ?></strong>
          </button>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li> <a href="" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#profil">Profil</a></li>
            <li> <a href="../logout.php" class="dropdown-item">Logout</a> </li>
          </ul>
        </div>

        <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
          <div class="offcanvas-header">
            <a class="btn btn-dark" type="button" href="../index.php">
              <h5> Manajemen Aset</h5>
            </a>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="../barang/index.php">
                  Barang
                </a>
              </li>
              <li class="nav-item">
                <a class=" nav-link" aria-current="page" href="../merek/index.php">
                  Merek
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="../jenis/index.php">
                  Jenis
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="../opd/index.php">
                  OPD(Organisasi Perangkat Daerah)
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="../gambar/index.php">
                  Gambar
                </a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catatan

                </a>
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a href="../catatan/barang.php" class="dropdown-item">Barang</a></li>
                  <li><a href="../catatan/pengguna.php" class="dropdown-item">Pengguna</a></li>
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
              <td>Level</td>
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