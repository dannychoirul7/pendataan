<?php
session_start();
if (!isset($_SESSION["login"])) {
  echo "<script>
    alert('Masukkan name dan Password');
    document.location.href ='login.php';
    </script>";
  exit;
}

// membatasi user mengakses dari url
if ($_SESSION["level_pengguna"] != "nol" and $_SESSION["level_pengguna"] != "satu") {
  echo "<script>
  alert('Anda tidak memiliki hak akkses halaman ini');
  document.location.href ='../index.php';
  </script>";
  exit;
}
require '../header.php';
require "fungsi.php";
$pengguna = query("SELECT * FROM pengguna ORDER BY id_pengguna Asc");
?>

<body>

  <div class="p-4" id="main-content">

    <div class="card mt-5">
      <div class="card-body">
        <h1 style="text-align:center">Daftar pengguna </h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th style="text-align:center" style="width: 15%">No</th>
              <th width="25%" style="text-align:center">username</th>
              <th style="text-align:center">Password</th>
              <th style="text-align:center">Nama pengguna</th>
              <th style="text-align:center">Level pengguna</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($pengguna as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["username_pengguna"]; ?></td>
                <td style="text-align: center;">*****************</td>
                <td style="text-align: center;"><?= $row["nama_pengguna"]; ?></td>
                <td style="text-align: center;"><?php
                                                if ($row["level_pengguna"] == "nol") {
                                                  echo "Unknown";
                                                }
                                                if ($row["level_pengguna"] == "satu") {
                                                  echo "Administrator";
                                                }
                                                if ($row["level_pengguna"] == "dua") {
                                                  echo "Petugas";
                                                }
                                                if ($row["level_pengguna"] == "tiga") {
                                                  echo "Staff Lapangan";
                                                }  ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_pengguna=<?= $row["id_pengguna"]; ?>" role="button">ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_pengguna=<?= $row["id_pengguna"]; ?>" onclick="return confirm('yakin?');" role="button">hapus</a>
                </td>
              </tr>
            <?php $no++;
            endforeach; ?>
          </tbody>
          </thead>
        </table>
      </div>
    </div>
  </div>
</body>
<?php require '../footer.php'; ?>