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
    <div>
      <nav class="navbar navbar-dark bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand" href="../index.php">Manajemen Aset</a>

          <ul class="me-auto mb-sm-0 offset-3 text-white">
            <div id="jam"></div>
            <?php
            $nama = $_SESSION["nama_pengguna"];

            $tanggal = mktime(date('m'), date("d"), date('Y'));
            date_default_timezone_set("Asia/Jakarta");

            ?>
          </ul>


          <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
            <i class="fa-solid fa-user fa-lg"></i> &nbsp; <strong><?= $_SESSION["nama_pengguna"] ?></strong>
          </button>

          <div>
            <div class="collapse collapse-vertical" id="collapseWidthExample">
              <a href="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#profil">Profil</a>
              <a href="../logout.php" class="btn btn-primary">Logout</a>
            </div>
          </div>


        </div>
      </nav>
    </div>

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