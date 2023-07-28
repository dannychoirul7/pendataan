<?php
// session_start();
// if (!isset($_SESSION["login"])) {
//   echo "<script>
//   alert('Masukkan name dan Password');
//   document.location.href ='login.php';
//   </script>";
//   exit;
// }
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
        </div>
      </nav>
    </div>
  </header>

  <body>
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
        <li>
          <a class="text-white" href="pengguna/index.php">
            Daftar Pengguna
          </a>
        </li>
        <li class="border-top my-3"></li>

        <button class="btn btn-toggle border-0 collapsed text-white" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
          Account
        </button>
        <div class="collapse" id="account-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="text-white">New...</a></li>
            <li><a href="#" class="text-white">Profile</a></li>
            <li><a href="#" class="text-white">Settings</a></li>
            <li><a href="#" class="text-white">Sign out</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="p-4" id="main-content">
      <button class="btn btn-primary" id="button-toggle">
        Toggle Menu
      </button>
      <div class="card mt-5">
        <div class="card-body">

          <!-- Small boxes (Stat box) -->
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                  <div class="inner">
                    <h3>150</h3>

                    <p>New Orders</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-bag"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                  <div class="inner">
                    <h3>53<sup style="font-size: 20px">%</sup></h3>

                    <p>Bounce Rate</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                  <div class="inner">
                    <h3>44</h3>

                    <p>pengguna Registrations</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-person-add"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                  <div class="inner">
                    <h3>65</h3>

                    <p>Unique Visitors</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
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