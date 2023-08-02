<?php
session_start();
if (!isset($_SESSION["login"])) {
  echo "<script>
    alert('Masukkan name dan Password');
    document.location.href ='login.php';
    </script>";
  exit;
}

require '../header.php';
require "../koneksi.php";
$catatan = query("SELECT * FROM catatan_barang 
ORDER BY id_catatan DESC");
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
        <h1 style="text-align:center">Data Catatan Barang</h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th width="15%" style="text-align:center">No</th>
              <th style="text-align:center">merek_barang</th>
              <th style="text-align:center">jenis_barang</th>
              <th style="text-align:center">nomor_serial</th>
              <th style="text-align:center">status barang</th>
              <th style="text-align:center">opd</th>
              <th style="text-align:center">detail_lokasi_barang</th>
              <th style="text-align:center">koordinat_barang</th>
              <th style="text-align:center">keterangan_barang</th>
              <th style="text-align:center">tanggal_masuk_barang</th>
              <th style="text-align:center">tanggal_update_barang</th>
              <th style="text-align:center">pengguna</th>
              <th style="text-align:center">gambar_barang</th>
              <th style="text-align:center">keterangan_catatan</th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($catatan as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["join_merek_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["join_jenis_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["nomor_serial_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["status_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["join_opd_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["detail_lokasi_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["koordinat_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["keterangan_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["tanggal_masuk_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["tanggal_update_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["join_pengguna_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["gambar_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["keterangan_catatan"]; ?></td>
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