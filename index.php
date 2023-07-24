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
          <a class="text-white" href="#">
            Bookmark
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
          <center>
            <h1>Lorem Ipsum
            </h1>
          </center>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque animi maxime at minima. Totam vero omnis ducimus commodi placeat accusamus, repudiandae nemo, harum magni aperiam esse voluptates. Non, sapiente vero?</p>
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