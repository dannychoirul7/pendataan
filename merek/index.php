<?php
require '../header.php';
require "fungsi.php";
$merek_barang = query("SELECT * FROM merek_barang ORDER BY id_merek_barang Asc");
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
        <h1 style="text-align:center">Merek Barang</h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th width="5%" style="text-align:center">No</th>
              <th style="text-align:center">Merek Barang</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($merek_barang as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["nama_merek_barang"]; ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_merek_barang=<?= $row["id_merek_barang"]; ?>" role="button">ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_merek_barang=<?= $row["id_merek_barang"]; ?>" onclick="return confirm('yakin?');" role="button">hapus</a>
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