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
require "fungsi.php";
$barang_sementara = query("SELECT * FROM sementara 
JOIN merek_barang ON join_merek_barang_sementara = id_merek_barang 
JOIN jenis_barang ON join_jenis_barang_sementara = id_jenis_barang 
JOIN opd ON join_opd_sementara = id_opd 
JOIN pengguna ON join_pengguna_sementara = id_pengguna
ORDER BY id_barang_sementara DESC");
?>

<body>

  <div class="p-4" id="main-content">

    <div class="card mt-5">
      <div class="card-body">
        <h1 style="text-align:center">Data Barang Sementara</h1>
        <table class="table table-striped" id="datatable" style="margin-left:auto;margin-right:auto">
          <thead>
            <tr style="text-align:center">
              <th width="15%" style="text-align:center">No</th>
              <th style="text-align:center">Merek Barang</th>
              <th style="text-align:center">Jenis Barang</th>
              <th style="text-align:center">Nomor serial barang</th>
              <th style="text-align:center">Nama Opd</th>
              <th style="text-align:center">Alamat Opd</th>
              <th style="text-align:center">Status Barang</th>
              <th style="text-align:center">Nama pengguna</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          </thead>

          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($barang_sementara as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["nama_merek_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_jenis_barang"]; ?></td>
                <td style="text-align: center;"><?= $row["nomor_serial_barang_sementara"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_opd"]; ?></td>
                <td class="text-break" style="text-align: center;"><?= $row["alamat_opd"]; ?></td>
                <td style="text-align: center;"><?= $row["status_barang_sementara"]; ?></td>
                <td style="text-align: center;"><?= $row["nama_pengguna"]; ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-dark" href="detail.php?id_barang_sementara=<?= $row["id_barang_sementara"]; ?>" role="button">Detail</a>
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_barang_sementara=<?= $row["id_barang_sementara"]; ?>" role="button">Ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_barang_sementara=<?= $row["id_barang_sementara"]; ?>" onclick="return confirm('yakin?');" role="button">Hapus</a>
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