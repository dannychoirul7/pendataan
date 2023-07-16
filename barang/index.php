<?php
require '../header.php';
require "fungsi.php";
$barang = query("SELECT * FROM barang");
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
        <h1 style="text-align:center">DATA BARANG</h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th style="text-align:center" style="width: 15%">No</th>
              <th style="text-align:center">Merek Barang</th>
              <th style="text-align:center">Jenis Barang</th>
              <th style="text-align:center">nomor_serial_barang</th>
              <th style="text-align:center">opd</th>
              <th style="text-align:center">status_barang</th>
              <th style="text-align:center">nama_user</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($barang as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["merek_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["jenis_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nomor_serial_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["opd"]; ?></td>
                <td style="text-align: center;"><?= $row["status_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_user"]; ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-dark" href="#" role="button">Detail</a>
                  <a class="btn btn-sm btn-warning" href="#" role="button">Ubah</a>
                  <a class="btn btn-sm btn-danger" href="#" onclick="return confirm('yakin?');" role="button">Hapus</a>
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