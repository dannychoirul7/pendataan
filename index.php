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
    <div>
      <nav class="navbar navbar-dark bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.php">Manajemen Aset</a>

          <ul class="me-auto mb-sm-0 offset-3 text-white">
            <div id="jam"></div>
            <?php
            $nama = $_SESSION["nama_pengguna"];

            $tanggal = mktime(date('m'), date("d"), date('Y'));
            date_default_timezone_set("Asia/Jakarta");
            $a = date("H");
            if (($a >= 6) && ($a <= 11)) {
              echo "Selamat Pagi <b>$nama</b>";
            } else if (($a >= 11) && ($a <= 15)) {
              echo "Selamat Siang <b>$nama</b>";
            } else if (($a > 15) && ($a <= 18)) {
              echo "Selamat Sore <b>$nama</b>";
            } else {
              echo "Selamat Malam <b>$nama</b>";
            }
            ?>
          </ul>


          <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
            <i class="fa-solid fa-user fa-lg"></i>
          </button>

          <div>
            <div class="collapse collapse-vertical" id="collapseWidthExample">
              <a href="" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#profil">Profil</a>
              <a href="logout.php" class="btn btn-primary">Logout</a>
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
  <style>
    li {
      list-style: none;
      margin: 20px 0 20px 0;
    }

    a {
      text-decoration: none;
    }

    .sidebar {
      width: 250px;
      height: 100vh;
      position: fixed;
      margin-left: -300px;
      transition: 0.4s;
    }

    .active-main-content {
      margin-left: 250px;
    }

    .active-sidebar {
      margin-left: 0;
    }

    #main-content {
      transition: 0.4s;
    }
  </style>

  <body>
    <div>
      <div class="sidebar p-4 bg-primary" id="sidebar">
        <li>
          <a class="text-white" href="barang/index.php">
            Barang
          </a>
        </li>
        <li>
          <a class=" text-white" href="merek/index.php">
            Merek
          </a>
        </li>
        <li>
          <a class="text-white" href="jenis/index.php">
            Jenis
          </a>
        </li>
        <li>
          <a class="text-white" href="opd/index.php">
            OPD(Organisasi Perangkat Daerah)
          </a>
        </li>
        <li>
          <a class="text-white" href="gambar/index.php">
            Gambar
          </a>
        </li>
        <li>
          <a class="text-white" href="catatan/index.php">
            Catatan
          </a>
        </li>


        <?php
        if ($_SESSION['level_pengguna'] == 'nol' or $_SESSION['level_pengguna'] == 'satu') : ?>
          <li>
            <a class="text-white" href="pengguna/index.php">
              Daftar Pengguna
            </a>
          </li>
        <?php endif;
        ?>

      </div>
    </div>
    <div class="p-4" id="main-content">
      <button class="btn btn-primary" id="button-toggle">
        Toggle Menu
      </button>
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
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
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