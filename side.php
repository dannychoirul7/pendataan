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
      <a class="text-white" href="../barang/index.php">
        Barang
      </a>
    </li>
    <li>
      <a class=" text-white" href="../merek/index.php">
        Merek
      </a>
    </li>
    <li>
      <a class="text-white" href="../jenis/index.php">
        Jenis
      </a>
    </li>
    <li>
      <a class="text-white" href="../opd/index.php">
        OPD(Organisasi Perangkat Daerah)
      </a>
    </li>
    <li>
      <a class="text-white" href="../gambar/index.php">
        Gambar
      </a>
    </li>
    <li>
      <a class="text-white" href="#" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">Catatan
      </a>
      <div class="collapse" id="account-collapse">
        <ul class="btn-toggle-nav">
          <li><a href="../catatan/barang.php" class="text-white">Barang</a></li>
          <li><a href="../catatan/pengguna.php" class="text-white">Pengguna</a></li>
        </ul>
      </div>
    </li>

    <?php
    if ($_SESSION['level_pengguna'] == 'nol' or $_SESSION['level_pengguna'] == 'satu') : ?>
      <li>
        <a class="text-white" href="../pengguna/index.php">
          Daftar Pengguna
        </a>
      </li>
    <?php endif;
    ?>

  </div>
</div>