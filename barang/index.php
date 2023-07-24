<?php
require '../header.php';
require "fungsi.php";
$barang = query("SELECT * FROM barang 
JOIN merek_barang ON join_merek_barang = id_merek_barang 
JOIN jenis_barang ON join_jenis_barang = id_jenis_barang 
JOIN opd ON join_opd = id_opd 
JOIN user ON join_user = id_user
ORDER BY id_barang DESC");
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
              <th width="15%" style="text-align:center">No</th>
              <th style="text-align:center">Merek Barang</th>
              <th style="text-align:center">Jenis Barang</th>
              <th style="text-align:center">Nomor serial barang</th>
              <th style="text-align:center">Nama Opd</th>
              <th style="text-align:center">Alamat Opd</th>
              <th style="text-align:center">Status Barang</th>
              <th style="text-align:center">Nama User</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($barang as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["nama_merek_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_jenis_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nomor_serial_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_opd"]; ?></td>
                <td style="text-align: center;"><?= $row["alamat_opd"]; ?></td>
                <td style="text-align: center;"><?= $row["status_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_user"]; ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-dark" href="detail.php?id_barang=<?= $row["id_barang"]; ?>" role="button">Detail</a>
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_barang=<?= $row["id_barang"]; ?>" role="button">Ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_barang=<?= $row["id_barang"]; ?>" onclick="return confirm('yakin?');" role="button">Hapus</a>
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