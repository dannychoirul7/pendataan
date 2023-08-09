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
JOIN merek_barang ON join_merek_barang_catatan = id_merek_barang
JOIN jenis_barang ON join_jenis_barang_catatan = id_jenis_barang
JOIN opd ON join_opd_catatan = id_opd
JOIN pengguna ON join_pengguna_catatan = id_pengguna
ORDER BY id_catatan DESC");
?>

<style>
  div.dataTables_wrapper {
    width: 100%;
    margin: 0 auto;
  }
</style>

<body>

  <div class="p-4" id="main-content">

    <div class="card mt-5">
      <div class="card-body">
        <h1 style="text-align:center">Data Catatan Barang</h1>
        <table class="table table-striped display nowrap" id="table">
          <thead>
            <tr style="text-align:center">
              <th width="15%" style="text-align:center">No</th>
              <th style="text-align:center">id_barang</th>
              <th style="text-align:center">merek_barang</th>
              <th style="text-align:center">jenis_barang</th>
              <th style="text-align:center">nomor_serial</th>
              <th style="text-align:center">status_barang</th>
              <th style="text-align:center">nama_dan_alamat_opd</th>
              <th style="text-align:center">detail_lokasi_barang</th>
              <th style="text-align:center">koordinat_barang</th>
              <th style="text-align:center">keterangan_barang</th>
              <th style="text-align:center">tanggal_masuk_barang/<br>tanggal_update_barang</th>
              <th style="text-align:center">pengguna</th>
              <th style="text-align:center">keterangan_catatan</th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($catatan as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td tyle="text-align: center;"><?= $row["id_barang_catatan"]; ?></td>
                <td class="text-break" style="text-align: center;"><?= $row["nama_merek_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_jenis_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nomor_serial_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["status_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_opd"]; ?><br> (<?= $row["alamat_opd"]; ?>)</td>
                <td style="text-align: center;"><?= $row["detail_lokasi_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["koordinat_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["keterangan_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["tanggal_masuk_barang_catatan"]; ?>/<br><?= $row["tanggal_update_barang_catatan"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_pengguna"]; ?></td>
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
<script>
  new DataTable('#table', {
    scrollX: true,
    scrollY: 430
  });
</script>