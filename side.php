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
      <a class="text-white" href="../catatan/index.php">
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