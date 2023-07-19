<?php
require '../header.php';
require "fungsi.php";
$jenis_barang = query("SELECT * FROM jenis_barang ORDER BY id_jenis_barang Asc");
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
        <h1 style="text-align:center">Jenis Barang </h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th width="5%" style="text-align:center">Nomor</th>
              <th style="text-align:center">Jenis Barang</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($jenis_barang as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["nama_jenis_barang"]; ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_jenis_barang=<?= $row["id_jenis_barang"]; ?>" role="button">ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_jenis_barang=<?= $row["id_jenis_barang"]; ?>" onclick="return confirm('yakin?');" role="button">hapus</a>
                </td>
              </tr>
            <?php $no++;
            endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</body>
<?php require '../footer.php'; ?>