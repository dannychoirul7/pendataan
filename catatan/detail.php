<?php
require '../header.php';
require "fungsi.php";

// ambil datadi URL
$id_barang = (int)$_GET["id_barang"];

// query data mahasiswa berdasarkan id
$barang = query("SELECT * FROM barang 
JOIN merek_barang ON join_merek_barang = id_merek_barang 
JOIN jenis_barang ON join_jenis_barang = id_jenis_barang 
JOIN opd ON join_opd = id_opd 
JOIN user ON join_user = id_user
WHERE id_barang = $id_barang ")[0];

?>

<body>
    <div class="p-4" id="main-content">
        <div class="card mt-5">
            <div class="card-body">
                <h1 style="text-align:center">DETAIL DATA BARANG</h1>
                <table class="table table-striped">

                    <tr>
                        <td style="width: 25%">Merek Barang</td>
                        <td>: <?= $barang['nama_merek_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Jenis Barang</td>
                        <td>: <?= $barang['nama_jenis_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Nomor Serial Barang </td>
                        <td>: <?= $barang['nomor_serial_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Status Barang</td>
                        <td>: <?= $barang['status_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Nama OPD</td>
                        <td>: <?= $barang['nama_opd']; ?> </td>
                    </tr>

                    <tr>
                        <td>Alamat OPD</td>
                        <td>: <?= $barang['alamat_opd']; ?> </td>
                    </tr>

                    <tr>
                        <td>Detail Penempatan Barang</td>
                        <td>: <?= $barang['detail_lokasi_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Koordinat Penempatan Barang</td>
                        <td>: <?= $barang['koordinat_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Keterangan Barang</td>
                        <td>: <?= $barang['keterangan_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Tanggal Awal Barang Terpasang</td>
                        <td>: <?= $barang['tanggal_masuk_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Tanggal Terakhir Update</td>
                        <td>: <?= $barang['tanggal_update_barang']; ?> </td>
                    </tr>

                    <tr>
                        <td>Nama User</td>
                        <td>: <?= $barang['nama_user']; ?> </td>
                    </tr>


                    <tr>
                        <td>Gambar Pedukung</td>
                        <td>:

                            <a href="../gambar/<?= $barang["gambar_barang"]; ?>">
                                <img src="../gambar/<?= $barang["gambar_barang"]; ?>" alt="gambar" width="25%">
                            </a>

                        </td>
                    </tr>

                </table>

                <a style="float: right;" class="btn btn-sm btn-warning m-1" href="ubah.php?id_barang=<?= $barang["id_barang"]; ?>" role="button">Ubah</a>
                <a style="float: right;" class="btn btn-sm btn-danger m-1" href="index.php" role="button">Kembali</a>

            </div>
        </div>
    </div>

</body>
<?php require '../footer.php'; ?>