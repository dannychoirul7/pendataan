<?php
require '../header.php';
require "fungsi.php";
$gambar = query("SELECT * FROM gambar ORDER BY id_gambar Asc");
?>

<body>
  <?php
  require '../side.php';
  ?>
  <div class="p-4" id="main-content">
    <button class="btn btn-primary" id="button-toggle">
      Toggle Menu
    </button>
    <div class="card mt-5">
      <div class="card-body">
        <h1 style="text-align:center">Data Gambar</h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th width="5%" style="text-align:center">No</th>
              <th style="text-align:center">Gambar Barang</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($gambar as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;">
                  <a href="../gambar/<?= $row["nama_gambar"]; ?>">
                    <img src="../gambar/<?= $row["nama_gambar"]; ?>" alt="nama_gambar" width="15%">
                  </a>
                </td>

                <td style="text-align: center">
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_gambar=<?= $row["id_gambar"]; ?>" role="button">ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_gambar=<?= $row["id_gambar"]; ?>" onclick="return confirm('yakin?');" role="button">hapus</a>
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