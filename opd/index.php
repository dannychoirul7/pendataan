<?php
require '../header.php';
require "fungsi.php";
$opd = query("SELECT * FROM opd ORDER BY id_opd Asc");
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
        <h1 style="text-align:center">OPD(Organisasi Perangkat Daerah) </h1>
        <table class="table table-striped" id="datatable">
          <thead>
            <tr style="text-align:center">
              <th style="text-align:center" style="width: 15%">No</th>
              <th width="25%" style="text-align:center">Nama OPD(Organisasi Perangkat Daerah)</th>
              <th style="text-align:center">Alamat</th>
              <th width="15%" style="text-align:center">
                <a class="btn btn-sm btn-primary" href="tambah.php" role="button">tambah data</a>
              </th>
            </tr>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($opd as $row) : ?>
              <tr>
                <td width="5%" style="text-align: center;" scope="row"><?= $no; ?></td>
                <td style="text-align: center;"><?= $row["nama_opd"]; ?></td>
                <td style="text-align: center;"><?= $row["alamat_opd"]; ?></td>
                <td style="text-align: center">
                  <a class="btn btn-sm btn-warning" href="ubah.php?id_opd=<?= $row["id_opd"]; ?>" role="button">ubah</a>
                  <a class="btn btn-sm btn-danger" href="hapus.php?id_opd=<?= $row["id_opd"]; ?>" onclick="return confirm('yakin?');" role="button">hapus</a>
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